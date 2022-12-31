# Example call: yh vans ca dev
# Example call: yh tnf nora preprod
# Example call: yh wl ca qa
function yh() {

  BRAND=""
  ENV=""

  # Convert shorthand for ease of use. I'll likely add more to this as we add more brands
  if [ "$1" = "tnf" ]
  then
    BRAND="thenorthface"
  else
    BRAND="$1"
  fi
  if [ "$3" = "preprod" ]
  then
    ENV="qa-preprod"
  else
    ENV="$3"
  fi

  yarn helmenv common-${ENV}/${BRAND}-"$2".yaml

}

# Example call: ys
# Example call Debug: ys d
# Example call with helm: ys h
function ys() {
  if [ "$1" = "h" ]
  then
    yarn start --helmenv
  elif [ "$1" = "d" ]
  then
    DEBUG=* yarn start --helmenv
  else
    yarn start
  fi
}

# Example dev call: yd
# Example dev helmenv call: yd h
function yd() {
  if [ "$1" = "h" ]
  then
    yarn dev --helmenv
  elif [ "$1" = "a" ]
  then
    yarn dev:all
  else
    yarn dev
  fi
}

function list() {
  lsof -i tcp:$1
}

# Colormap
function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}