#!/bin/bash

githubUsername=$1
sprint=$2
reflectionsUrlSprint="https://github.com/${githubUsername}/reflections/blob/main/sprint-${sprint}/my-reflections-sprint-${sprint}.md"
githubUrl="https://github.com/${githubUsername}"
blogUrlSprint="https://${githubUsername}.github.io/blog/sprint${sprint}-technical.html"

reflectionsUrl="https://github.com/${githubUsername}/reflections"
blogUrl="https://${githubUsername}.github.io"

if [ ! -z ${sprint} ]
then
    array=( ${reflectionsUrlSprint} ${githubUrl} ${blogUrlSprint} )
    for i in "${array[@]}"
    do
        open -a "/Applications/Google Chrome.app" $i
    done
else
    array=( ${reflectionsUrl} ${githubUrl} ${blogUrl} )
    for i in "${array[@]}"
    do
        open -a "/Applications/Google Chrome.app" $i
    done
fi
