def require_path(path="tests/dinda/*")
  Dir[path].each do |file|
    p file
    if File.file?(file)
      require Dir.pwd + '/' + file
    else
      require_path(file + '/*')
    end
  end
end

require_path
