lapis = require "lapis"
  
class MoonRocks extends lapis.Application
  @path: "/threefold"
  @name: "threefold_"
  @enable "etlua"

  [index: ""]: =>
    @title = "Home"
    render: "threefold.index", layout:"threefold.layout"

  [grid: "/grid"]: =>
    @title ="Grid"
    render: "threefold.grid", layout: "threefold.layout"

  [tech: "/tech"]: =>
    @title ="Technology"
    render: "threefold.tech", layout: "threefold.layout"

  [tokens: "/tokens"]: =>
    @title ="Tokens"
    render: "threefold.tokens", layout: "threefold.layout"

  [team: "/team"]: =>
    @title ="Team"
    render: "threefold.team", layout: "threefold.layout"
  
  [partners: "/partners"]: =>
    @title ="Partners"
    render: "threefold.partners", layout: "threefold.layout"

  [blog: "https://threefoldfoundation.github.io/info_foundation/#/blog/README"]: =>
    @title ="Blog"

  [join: "/join"]: =>
    @title ="Join & Follow"
    render: "threefold.join", layout: "threefold.layout"
