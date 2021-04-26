;(async ()=> {

  let CURRENT_LANG_KEY = "current_lang"

  const getLangs = async ()=> {
    const data = await fetch("/langs/langs.json")
    return data
  }

  const getData = key=> localStorage.getItem(key)

  const setData = (key, value)=> {
    const cv = JSON.stringify(value)
    localStorage.setItem(key, cv)
  }

  const getLocalCache = ()=> {
    const data = getData(CURRENT_LANG_KEY)
    if (data == null || data == undefined) return null
    const r = JSON.parse(JSON.parse(data))
    return r
  }

  const setLocalCache = (cache)=> {
    const v = JSON.stringify(cache)
    return setData(CURRENT_LANG_KEY, v)
  }

  const getRemoteLang = async lang_code=> {
    const data = await getLangs()
    if (data.ok) {
      return await data.json()
    }
    return { langs: [] }
  }

  const getHtmlPath = ()=> {
    const p = location.pathname
    if (p == "/index.html" || p == "/") return "/"
    return p
  }

  const nl2br = function(rawHtmlCode) {
    return rawHtmlCode.replaceAll(/\n/g, "<br />");
  }

  const uploadLang = async item=> {
    try {
      const path = item.path
      const data = await (await fetch(path)).json()
      Object.keys(data["menu"]).forEach(item=> {
        const value = data["menu"][item]
        $(`#${ item }`).text(value)
      })
      const htmlPath = getHtmlPath()
      if (htmlPath == "/") {
        const ps = $(".advert p")
        $(ps[0]).text(data["home"]["advert1"])
        $(ps[1]).text(data["home"]["advert2"])
      }
      if (htmlPath == "/gallery.html") {
        $("h1").text(data["gallery"]["h1"])
        $("h2").text(data["gallery"]["h2"])
      }
      if (htmlPath == "/download.html") {
        let p = $("a p")
        Object.values(data["download"]).forEach((item, index)=> {
          $(p[index]).text(item)
        })
      }
      if (htmlPath == "/about.html") {
        const content = nl2br(data["about"]["content"])
        const title = data["about"]["title"]
        const footer = data["about"]["footer"]
        $(".blurb.center").html(`
          <h3>${ title }</h3>
          <div style="line-height: 1.7em">
            ${ content }
          </div>
          <div style="margin-top: 25px; " align="right">${ footer }</div>
        `)
      }
      if (htmlPath == "/faq.html")  {
        $(".faqheader").text(data["faq"]["faqheader"])
        let spstr = ""
        const aqList = data["faq"]["qa"]
        aqList.forEach((item, index)=> {
          const { question, answer } = item
          spstr += `<h3>${ question }</h3>`
          + `<p>${ nl2br(answer) }</p>`
        })
        $(".questions.center").html(spstr)
      }
      if (htmlPath == "/twisteros.html") {
        Object.keys(data["twisteros"]).forEach(item=> {
          const html = nl2br(data["twisteros"][item])
          $(`#${ item }`).html(html)
        })
      }
      if (htmlPath == "/twisteroslite.html") {
        Object.keys(data["twisteroslite"]).forEach(item=> {
          const html = nl2br(data["twisteroslite"][item])
          $(`#${ item }`).html(html)
        })
      }
      if (htmlPath == "/twisterui.html") {
        Object.keys(data["twisterui"]).forEach(item=> {
          const v = data["twisterui"][item]
          if (!(item == "download_btn" || item == "torrent_btn")) {
            $(`#${ item }`).html(v)
          } else {
            $(".download_btn").toArray().forEach(item=> {
              $(item).text(data["twisterui"]["download_btn"])
            })
            $(".torrent_btn").toArray().forEach(item=> {
              $(item).text(data["twisterui"]["torrent_btn"])
            })
          }
        })
      }
    } catch (error) {
      console.error(error)
    }
  }
  
  const { langs } = await getRemoteLang()
  
  const dropmic = new Dropmic(document.querySelector('[data-dropmic="42"]'))

  const cacheTmp = getLocalCache()
  if (cacheTmp != null) {
    uploadLang(cacheTmp)
  }

  dropmic.addBtn(`en`, function() {
    location.href = getHtmlPath()
    localStorage.removeItem(CURRENT_LANG_KEY)
  })

  langs.forEach(item=> {

    dropmic.addBtn(item.name, ()=> {
      uploadLang(item)
      setLocalCache(item)
      dropmic.close()
    })

  })

})()