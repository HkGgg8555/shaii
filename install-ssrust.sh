set -e

echo "===> 下载 shadowsocks-rust"
cd /tmp
wget -q https://github.com/shadowsocks/shadowsocks-rust/releases/latest/download/shadowsocks-v1.24.0.x86_64-unknown-linux-musl.tar.xz

echo "===> 解压"
tar -xf shadowsocks-v1.24.0.x86_64-unknown-linux-musl.tar.xz

echo "===> 安装到 /usr/local/bin"
cp -f ssserver sslocal ssmanager ssurl ssservice /usr/local/bin/ 2>/dev/null || true

echo "===> 设置权限"
chmod +x /usr/local/bin/ss*

echo "===> 完成，检查版本"
/usr/local/bin/ssserver -h || echo "可能未成功复制，请检查"

echo "===> 安装完成"
