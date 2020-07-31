#!/usr/bin/env fish

tar -cf - * | ssh -p 4841 pencil@amanda.moe 'cd ~/listings/; and tar -xf -; and ./build.fish; and tar -cf - build' | tar -xf -
