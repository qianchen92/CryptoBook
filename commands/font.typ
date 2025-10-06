//fonts
#let algfont(x) = math.upright(x)
#let varfont(x) = math.upright(x)
#let setfont(x) = math.cal(math.upright(x))
#let notionfont(x) = math.sans(math.upright(x))
#let vmat(x) = math.bold(math.upright(x))
#let bmat(..args) = math.mat(delim: "[", ..args)
#let trans = math.top
#let Set(x) = setfont(x)
#let Var(x) = varfont(x)
#let Alg(x) = algfont(x)
#let Notion(x) = notionfont(x)
#let Vec(x) = vmat(x)
#let Mat(..args) = bmat(..args)
