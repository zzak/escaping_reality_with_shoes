desc "populate the code directory with demo apps"
directory "code" do
  sh "git submodule init"
  sh "git submodule update"
end

desc "generate the live coding directory with code helpers and images"
directory "live" => "code" do
  sh "mkdir live"
  sh "cp -R code/mojibake/helpers live"
  sh "cp -R code/mojibake/images live"
  sh "cp -R code/shoebox/draw/helpers live"
end
