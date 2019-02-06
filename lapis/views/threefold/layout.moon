import Widget from require "lapis.html"

class Layout extends Widget
    content: =>
        html_5 ->
            lang: "En"
            @render_head!
            body class: "single single-page single-page-sample-page frontpage", ->
                div id: "all", ->
                    @render_navbar!
                    @content_for "inner"
                @render_footer!

    render_head: =>
        head ->
            meta charset: "utf-8"
            title ->
                if @title
                    text "#{@title} - Responsible Internet For All"
                else
                    text "Responsible Internet For All"

            -- Favicon and apple touch icons
            link href:"/static/threefold/img/favicon.png", rel:"shortcut icon", type:"image/x-icon"
            link href:"/static/threefold/img/tf-webclip.png", rel:"apple-touch-icon", type:"image/x-icon"
            link href: "/static/threefold/css/css.css", rel:"stylesheet"
            link href: "/static/threefold/css/tidy.css", rel:"stylesheet"
            link href: "/static/threefold/css/svgs-attachment.css", rel:"stylesheet"
            link href: "/static/threefold/css/main.min.css", rel:"stylesheet"
            link href: "/static/threefold/css/custom.css", rel:"stylesheet"
            script src:"https://www.youtube.com/iframe_api", type:"text/javascript"
            script src:"http://builds.handlebarsjs.com.s3.amazonaws.com/handlebars-v4.0.12.js", type:"text/javascript"
            script src:"https://cdn.rawgit.com/showdownjs/showdown/1.9.0/dist/showdown.min.js", type:"text/javascript"
            script src:"/static/threefold/js/lapis_client.js", type:"text/javascript"


            -- Intercom
            script src: "/static/threefold/js/intercom-config.js", type:"text/javascript"

            -- Responsivity for older
            -- [if lt IE 9]
            --     script src: "https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"
            --     script src: "https://oss.maxcdn.com/respond/1.4.2/respond.min.js"
            -- [endif]

    render_navbar: =>
        div class: "layout-header layout-header-fixed ml-auto", ->
            div class: "layout-container", ->
                div class: "header-container", ->
                    a href: "/", class: "header-brand", ->
                        img src: "/static/threefold/svg/threefold-logo-white.svg", alt: ""
                    button class:"nav-toggle d-lg-none collapsed", type:"button", ["data-toggle"]:"collapse", ['data-target']:"#nav-collapse",['aria-expanded']:"false", ['aria-label']:"Toggle navigation", ->
                        span class:"burger-part"
                        span class:"burger-part"
                        span class:"burger-part"

                    div class: "collapse nav-collapse", id: "nav-collapse", ->
                        div class: "layout-container",  ->
                            ul id:"menu-top-menu", class:"nav", ->
                                li class: "dropdown nav-item", ->
                                    a class:"nav-link", href: @url_for("index"), "Home"
                                li class: "dropdown nav-item", ->
                                    a class: "nav-link", href: @url_for("threefold_grid"), "Grid"
                                li class:"dropdown nav-item", ->
                                    a class:"nav-link", href: @url_for("threefold_tech"), "Technology"
                                li class:"dropdown nav-item", ->
                                    a class:"nav-link", href: @url_for("threefold_tokens"), "Tokens"
                                li class:"dropdown nav-item", ->
                                    a class:"nav-link", href: @url_for("threefold_team"), "Team"
                                li class:"dropdown nav-item", ->
                                    a class:"nav-link", href: @url_for("threefold_partners"), "Partners"
                                li class:"dropdown nav-item", ->
                                    a class:"nav-link", href: @url_for("threefold_blog"), "Blog", ->
                                        img class:"ml-0h", src:"/static/threefold/svg/ic-externallink.svg"
                                li class:"dropdown nav-item", ->
                                    a class:"nav-link", href: @url_for("threefold_join"), "Join & Follow"

    render_footer: =>
        div class:"layout-footer", ->
            div class:"layout-container", ->
                div class:"row", ->
                    div class:"col-12 col-lg-6", ->
                        div class:"footer-section", ->
                            h4 class:"mt-0 mb-2", "ThreeFold Resources"

                            div class:"row", ->
                                div class:"col-6 col-lg-4 mb-2h", ->
                                    a href: "https://threefoldfoundation.github.io/info_tokens/#/", target:"_blank", ->
                                        img src:"/static/threefold/svg/ic-f-tokens.svg", alt:"Token Wiki", width:"38",
                                        br,
                                        'Token Wiki'

                                div class:"col-6 col-lg-4 mb-2h", ->
                                    a href: "https://threefoldfoundation.github.io/info_grid/#/", target:"_blank", ->
                                        img src:"/static/threefold/svg/ic-f-grid.svg", alt:"Grid Wiki", width:"38",
                                        br,
                                        'Grid Wiki'

                                div class:"col-6 col-lg-4 mb-2h", ->
                                    a href:"https://threefoldfoundation.github.io/info_foundation/#/", target:"_blank", ->
                                        img src:"/static/threefold/svg/ic-f-foundation.png", alt:"Foundation Wiki", width:"38",
                                        br,
                                        'Foundation Wiki'


                                div class:"col-6 col-lg-4 mb-2h", ->
                                    a href:"http://threefoldimpact.com/", target:"_blank", ->
                                        img src:"/static/threefold/svg/ic-f-impact.svg", alt:"ThreeFold Impact", width:"38",
                                        br,
                                        'ThreeFold Impact'

                                div class:"col-6 col-lg-4 mb-2h", ->
                                    a href:"http://radar.threefold.me/", target:"_blank", ->
                                        img src:"/static/threefold/svg/ic-f-radar.svg", alt:"ThreeFold Radar", width:"38",
                                        br,
                                        'ThreeFold Radar'

                    div class:"col-12 col-sm-6 col-lg-3 mb-3", ->
                        div class:"footer-section", ->
                            h4 class:"mt-0 mb-2", 'Misc'

                            ul class:"nav mb-0", ->
                                li ->
                                    a href:"#", "Terms & Conditions"
                                li ->
                                    a href:"#", "Privacy Statement"

                    div class:"col-12 col-sm-6 col-lg-3 mb-3", ->
                        div class:"footer-section", ->
                            h4 class:"mt-0 mb-2", "Social"
                            ul class:"footer-socials", ->
                                li ->
                                    a href:"https://www.facebook.com/ThreeFoldCommunity", target:"_blank", ->
                                        img src:"/static/threefold/svg/ic-facebook.svg", alt:"facebook", title:"https://www.facebook.com/ThreeFoldCommunity"

                                li ->
                                    a href:"https://twitter.com/threefold_fdn", target:"_blank", ->
                                        img src:"/static/threefold/svg/ic-twitter.svg", alt:"twitter", title:"https://twitter.com/threefold_fdn"

                                li ->
                                    a href:"https://www.youtube.com/threefoldfoundation", target:"_blank", ->
                                        img src:"/static/threefold/svg/ic-youtube.svg", alt:"youtube", title:"https://www.youtube.com/threefoldfoundation"

                                li ->
                                    a href:"https://t.me/threefoldtoken_chat", target:"_blank", ->
                                        img src:"/static/threefold/svg/ic-telegram.svg", alt:"telegram", title:"https://t.me/threefoldtoken_chat"

                                li ->
                                    a href:"https://medium.com/threefold/", target:"_blank", ->
                                        img src:"/static/threefold/svg/medium-brands.svg", alt:"medium", title:"https://medium.com/threefold/"

                                li ->
                                    a href:"https://www.reddit.com/r/ThreeFoldToken/", target:"_blank", ->
                                        img src:"/static/threefold/svg/reddit-brands.svg", alt:"reddit", title:"https://www.reddit.com/r/ThreeFoldToken/"