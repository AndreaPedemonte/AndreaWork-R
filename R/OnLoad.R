.onLoad = function(libname, pkgname){
  conf = new.env()
  with(conf, {
    home_folder = '/Users/andrea.pedemonte'
    pyenv_folder = file.path(home_folder, '.pyenv/versions')
    downloads = file.path(home_folder, 'Downloads')
    data_folder = file.path(home_folder, 'Data')
    if(!dir.exists(data_folder)){
      dir.create(data_folder)
    }
  })
  lockEnvironment(conf)
  assign('conf', conf, envir = globalenv())
}
