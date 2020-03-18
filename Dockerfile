FROM ocaml/opam2:ubuntu-19.04

WORKDIR /home/opam

RUN ls -l \
  && git clone https://github.com/gitoleg/my-repo-2 \
  && cd my-repo-2 \
  && sh -c "echo a > 11" \
  && git add 11 \
  && git commit -m "message" \
  && git push origin master
