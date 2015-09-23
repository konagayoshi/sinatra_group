require "sinatra"
require "haml"

# root
get '/' do
<<EOS
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>HTML test</title>
<style>
h1,h2,h3,h4 {
 color: #005555;
 padding: 6px;
}

ul {
 list-style-type: square;
}

body {
 margin-left, margin-right: 4%;
 background-color: #f0f0e0;
}
</style>
</head>

<body>
<h2>HTML test</h2>
<hr />
<p>
<ul>
<li><a href="/internal/">Internal (Erb) template</a></li>
<li><a href="/erb/">External (Erb) template</a></li>
</ul>
</p>
</body>
</html>
EOS
end

get '/internal/' do
  @title = "Internal template"
  erb :internal
end


get '/erb/' do
  @title = "erb template"
  erb :erb
end

get '/haml/' do
  @title = "haml template"
  haml :haml
end


__END__

@@internal
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title><%= @title %></title>
<style>
h1,h2 {
  color: red;
  padding: 6px;
}
</style>
</head>

<body>
<h1><%= @title %></h1>
<hr />
<p><a href="/">[ Home ]</a></p>

</body>
</html>
