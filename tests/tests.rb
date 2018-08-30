def require_path(path="tests/dinda/*")
  Dir[path].each do |file|
    if File.file?(file)
      require Dir.pwd + '/' + file
      p "Loaded test file: #{file}"
    else
      require_path(file + '/*')
    end
  end
end

require_path
