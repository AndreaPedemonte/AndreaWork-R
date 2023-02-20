.onLoad = function(libname, pkgname){
  conf = new.env()
  with(conf, {
    home_folder = '/Users/andrea.pedemonte'
    pyenv_folder = file.path(home_folder, '.pyenv/versions')
  })
  lockEnvironment(conf)
  assign('conf', conf, envir = globalenv())
}
