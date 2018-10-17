# GPG cheatsheet

### Generating
```
gpg --gen-key
```

(note: If you have entropy issues on Linux, install rng-tools and run `sudo rngd -r /dev/urandom`

### Listing
```
gpg --list-key
```

Or

```
gpg -K --keyid-format long --with-colons --with-fingerprint
```


### Exporting
#### Export private + public keypair
```
gpg --export AB12CD34 > ./keys.gpg
gpg --export-secret-keys AB12CD34 >> ./keys.gpg
```

#### Export public key as ASCII-armored
```
gpg --armor --export AB12CD34
```

#### Export private key as ASCII-armored (needed by Mailvelope and probably also other apps)
```
gpg --armor --export-secret-key "my@email.tld" > my.key
```

#### Export all private + public keys held
```
gpg --export > ./allkeys.gpg
gpg --export-secret-keys >> ./allkeys.gpg
```


### Adding email to existing key
```
gpg --edit-key AB12CD34
gpg> adduid
gpg --edit-key AB12CD34 trust 
```


### Keyservers
#### Update to keybase & key server
```
keybase push --update
gpg --keyserver hkp://pgp.mit.edu --send-keys AB12CD34
```

#### Import from keybase or keyserver
```
keybase track <user>
gpg --keyserver hkp://pgp.mit.edu --search-keys <e-mail>
```


### GPG for encryption
#### encrypt
`gpg --output <encrypted file name> --encrypt --recipient my@email.tld <raw file name>`

#### decrypt
`gpg --output <raw file name> --decrypt <encrypted file name>`


### No password prompt?
```
export GPG_TTY=`` `tty` ``
```
