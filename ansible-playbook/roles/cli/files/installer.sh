#!/bin/bash

set -eu

function expand() {
    download_path=$1
    tmp_dir=$2

    ext=".${download_path#*.}"

    echo $ext

    case $ext in
        .zip)
            unzip $download_path -d $tmp_dir > /dev/null
            rm $download_path
        ;;
        .tar.gz)
            tar xvf $download_path -C $tmp_dir
            rm $download_path
        ;;
        *)
            echo "unknown ext: $ext"
            exit 1
        ;;
    esac
}

user=$1
repo=$2
dest=$3

os=$(uname -s | tr '[A-Z]' '[a-z]')
arch='amd64'

url="https://github.com/$user/$repo/releases/latest"
path=$(wget -qO - $url | grep -o '/'"$user/$repo"'/releases/download/[^"]*' | grep $arch | grep $os)

filename=$(basename $path)
download_url="https://github.com$path"
tmp_dir="/tmp"
download_path="$tmp_dir/$filename"

wget -O $download_path $download_url 2> /dev/null

expand $download_path $tmp_dir

ext=".${download_path#*.}"
dir="$tmp_dir/$(basename $download_path $ext)"

mv $dir/$repo $dest
rm -r $dir
