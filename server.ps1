$root = Resolve-Path (Join-Path $PSScriptRoot 'CODE')
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add('http://localhost:3000/')
$listener.Start()
Write-Host "Server running at http://localhost:3000/"

while ($listener.IsListening) {
    $ctx = $listener.GetContext()
    $p = $ctx.Request.Url.LocalPath
    if ($p -eq '/') { $p = '/index.html' }

    $file = Join-Path $root $p.TrimStart('/')

    if (Test-Path $file -PathType Leaf) {
        $ext = [System.IO.Path]::GetExtension($file).ToLower()
        $mime = switch ($ext) {
            '.html' { 'text/html; charset=utf-8' }
            '.css'  { 'text/css' }
            '.js'   { 'application/javascript' }
            '.png'  { 'image/png' }
            '.jpg'  { 'image/jpeg' }
            '.jpeg' { 'image/jpeg' }
            '.svg'  { 'image/svg+xml' }
            default { 'application/octet-stream' }
        }
        $bytes = [System.IO.File]::ReadAllBytes($file)
        $ctx.Response.ContentType = $mime
        $ctx.Response.ContentLength64 = [long]$bytes.Length
        $ctx.Response.OutputStream.Write($bytes, 0, $bytes.Length)
    } else {
        $ctx.Response.StatusCode = 404
        $msg = [System.Text.Encoding]::UTF8.GetBytes('Not found')
        $ctx.Response.ContentLength64 = [long]$msg.Length
        $ctx.Response.OutputStream.Write($msg, 0, $msg.Length)
    }
    $ctx.Response.OutputStream.Close()
}
