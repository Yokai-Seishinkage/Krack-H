# Krack-H by Yokai Seishinkage
A hash cracker that accepts sha1, sha256, sha384, sha512, and md5 hashes.

Hash cracking tool written in bash and ported to C.

## Installation ##

git clone https://github.com/Yokai-Seishinkage/Krack-H.git

## Dependencies ##

coreutils
bash version 4.3.42

## Usage ##

Enter the hash you wish to crack including a double space and a dash "-" on the end.

(i.e. MD5 Hash for the word "password" would be: 5f4dcc3b5aa765d61d8327deb882cf99  - )
Then follow the directions as you are prompted.

## Notes ##

There is ver little error correction. Most errors (such as user input errors) will
end the script and you will have to start over. Such is the nature of this beast.

Any issues report them asap. I will correct them as soon as I can.

This tool is written in bash and ported to C code. It is obviously not going to be as fast as a tool 
such as John the Ripper or Aircrack-ng. However, this tool works exceptionally
fast with lighter wordlists (i.e. less than 500000 lines). Using a tool such as crunch, 
one can make very small wordlists that are very specific and krack-H will speed right through them.
