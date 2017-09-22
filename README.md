# Explore docker images
Here you can find out how exactly different layers are stored inside docker

## Summary
### Case 1 - high level libraries (many dependencies)
| Image a | Image b | Image c |
| ------- | ------- | ------- |
| python3 | bash    | git     |
| bash    | git     | python3 |

#### Layers
`docker image inspect` output:  
##### Image a
```json
"Layers": [
    "sha256:5bef08742407efd622d243692b79ba0055383bbce12900324f75e56f589aedb0",
    "sha256:77da679a09fb762129f5f643a51bd090e231b3c7694b2246bb5b22f63ea2900f",
    "sha256:e37819a4ab2fe40dbff6be6b1dbee478ed639f41882a8689835ece0522dc1cbe",
    "sha256:489a286c24e4a31f9fd82b1b88ecf86cbeecf379f40a25d44ffc649eaee9dd01"
]
```
##### Image b
```json
"Layers": [
    "sha256:5bef08742407efd622d243692b79ba0055383bbce12900324f75e56f589aedb0",
    "sha256:77da679a09fb762129f5f643a51bd090e231b3c7694b2246bb5b22f63ea2900f",
    "sha256:30e19a1379b6d980dabacef3fa227230b30496d71eaa0014586ec4e0baaba249",
    "sha256:2f9ff5aac4e709ca1466695e8c2b54cf268273f737b8eebeb99132ef1bf5718c"
]
```
##### Image c
```json
"Layers": [
    "sha256:5bef08742407efd622d243692b79ba0055383bbce12900324f75e56f589aedb0",
    "sha256:77da679a09fb762129f5f643a51bd090e231b3c7694b2246bb5b22f63ea2900f",
    "sha256:5418299137187d6d68e53db683fb6b1d4de69ddb67f045d8241ddcfe6601ccfe",
    "sha256:a851a037e425b3133d439df640e7d4cf366be10bfc70884a61d895d470bfd5c2"
]
```

### Case 2 - low level librareis (only musl dependency)
| Image a | Image b | Image c |
| ------- | ------- | ------- |
| zlib    | busybox | libuuid |
| busybox | libuuid | zlib    |

#### Layers
`docker image inspect` output:  
##### Image a
```json
```
##### Image b
```json
```
##### Image c
```json
```


