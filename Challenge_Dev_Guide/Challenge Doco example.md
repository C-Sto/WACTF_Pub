Challenge Data:

|metadata | <> |
|--- | --- |
|Company |  Hivint |
|Developer Name(s) | Cam |
|Contact | Cameron@hivint.com/C_Sto (Slack) |
| Challenge Category | Crypto |
| Challenge Tier | 1 |

| Player facing | <> |
|--- | --- |
|Challenge Name | Plaintext is good for hackers |
|Challenge Description | Cam got caught trying to log into the scoreboard while it was being developed, we got the packet capture. | 
|Challenge Hint 1 | TLS is actually pretty good, maybe ignore all that | 
|Challenge Hint 2 | The website was protected by basic auth during development |
|Challenge Hint 3 | Check the basic auth header in one of the HTTP requests |

| Admin Facing | <> |
|--- | --- |
|Challenge Flag| WACTF{lol_basic_auth_feels_kinda_bad_and_is_useless_over_plaintext} |
|Challenge Vuln| Basic auth over plaintext |

Challenge PoC
---

Open packet capture, look for the request to /flag. Check basic auth header, and decode the base64