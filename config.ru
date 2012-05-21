use Rack::Static, 
  :urls => ["/stylesheets", "/images", "/scripts", "/fonts", "/pg.pdf", "/cina_1.pdf", "/cin_2.pdf"],
  :root => "public"

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/index.html', File::RDONLY)
  ]
}