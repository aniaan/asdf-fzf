#!/usr/bin/env bash

REPO_NAME="junegunn/fzf"
GITHUB_BASE_URL="https://github.com"
GITHUB_API_BASE_URL="https://api.github.com"

get_github_api_tags_url() {
    echo "${GITHUB_API_BASE_URL}/repos/${REPO_NAME}/tags"
}

get_github_download_url() {
    local version=$1
    local filename=$2
    echo "${GITHUB_BASE_URL}/${REPO_NAME}/releases/download/v${version}/${filename}"
}

get_checksums_url() {
    local version=$1
    echo "$(get_github_download_url "${version}" "fzf_${version}_checksums.txt")"
}

get_release_url() {
    local version=$1
    local filename=$2
    echo "$(get_github_download_url "${version}" "${filename}")"
}
