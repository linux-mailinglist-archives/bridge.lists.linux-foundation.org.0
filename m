Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D191160527
	for <lists.bridge@lfdr.de>; Sun, 16 Feb 2020 18:42:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EF52A87368;
	Sun, 16 Feb 2020 17:42:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vAdyDBz-TWWX; Sun, 16 Feb 2020 17:42:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id BC7258733F;
	Sun, 16 Feb 2020 17:42:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 73504C1D8E;
	Sun, 16 Feb 2020 17:42:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 05468C0171
 for <bridge@lists.linux-foundation.org>; Mon, 10 Feb 2020 15:07:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E838D84798
 for <bridge@lists.linux-foundation.org>; Mon, 10 Feb 2020 15:06:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nv5TtELflbaQ for <bridge@lists.linux-foundation.org>;
 Mon, 10 Feb 2020 15:06:57 +0000 (UTC)
X-Greylist: delayed 00:05:40 by SQLgrey-1.7.6
Received: from thurn.uni-konstanz.de (thurn.uni-konstanz.de [134.34.240.38])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AB7A182752
 for <bridge@lists.linux-foundation.org>; Mon, 10 Feb 2020 15:06:56 +0000 (UTC)
Received: from omicron.kim.uni-konstanz.de (omicron.kim.uni-konstanz.de
 [134.34.240.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by thurn.uni-konstanz.de (Postfix) with ESMTPS id 48GTcn4z5dzRM
 for <bridge@lists.linux-foundation.org>; Mon, 10 Feb 2020 16:01:13 +0100 (CET)
Received: from thumbnail.fritz.box (cable-dynamic-87-245-127-186.shinternet.ch
 [87.245.127.186])
 by omicron.kim.uni-konstanz.de (Postfix) with ESMTPSA id 7FCDA8B0
 for <bridge@lists.linux-foundation.org>; Mon, 10 Feb 2020 16:00:58 +0100 (CET)
Message-ID: <bce2e3fb5e6061a926250b942a958f992b0d85bc.camel@uni-konstanz.de>
From: Marcel Waldvogel <marcel.waldvogel@uni-konstanz.de>
To: bridge@lists.linux-foundation.org
Date: Mon, 10 Feb 2020 16:00:49 +0100
Content-Type: multipart/signed; micalg="sha-256";
 protocol="application/pkcs7-signature"; 
 boundary="=-azVBy5hFr493HO3LGIVb"
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-Mailman-Approved-At: Sun, 16 Feb 2020 17:42:14 +0000
Subject: [Bridge] Support for long interface names
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>


--=-azVBy5hFr493HO3LGIVb
Content-Type: multipart/alternative; boundary="=-CMJkvL+MJGbs24OVz8Wf"


--=-CMJkvL+MJGbs24OVz8Wf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I've added support for long bridge interface names (such as"br-
0081a64f416f") to "brctl show" (long physical interface names arenot a
problem there).
Please find a branch with the commit at=20
https://github.com/MarcelWaldvogel/bridge-utils/tree/long-ifnames

-Marcel
--=20
Beste Gr=C3=BC=C3=9Fe,

-Marcel Waldvogel
University of Konstanz
Distributed Systems Laboratory
Efficient Secure and Private Collaboration

--=-CMJkvL+MJGbs24OVz8Wf
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr"><head></head><body style=3D"text-align:left; direction:lt=
r;"><pre>Hi,</pre><pre><br></pre><pre>I've added support for long bridge in=
terface names (such as</pre><pre>"br-0081a64f416f") to "brctl show" (long p=
hysical interface names are</pre><pre>not a problem there).</pre><pre><br><=
/pre><pre>Please find a branch with the commit at </pre><a href=3D"https://=
github.com/MarcelWaldvogel/bridge-utils/tree/long-ifnames"><pre>https://git=
hub.com/MarcelWaldvogel/bridge-utils/tree/long-ifnames</pre></a><pre><br></=
pre><pre><br></pre><pre>-Marcel</pre><div><span><pre>-- <br></pre><div>Best=
e Gr=C3=BC=C3=9Fe,</div><div><br></div><div><a href=3D"https://me.uni.kn/ma=
rcel.waldvogel">-Marcel Waldvogel</a></div><div>University of Konstanz</div=
><div>Distributed Systems Laboratory</div><div>Efficient Secure and Private=
 Collaboration</div></span></div></body></html>

--=-CMJkvL+MJGbs24OVz8Wf--

--=-azVBy5hFr493HO3LGIVb
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCCFjww
ggUSMIID+qADAgECAgkA4wvV+K8l2YEwDQYJKoZIhvcNAQELBQAwgYIxCzAJBgNVBAYTAkRFMSsw
KQYDVQQKDCJULVN5c3RlbXMgRW50ZXJwcmlzZSBTZXJ2aWNlcyBHbWJIMR8wHQYDVQQLDBZULVN5
c3RlbXMgVHJ1c3QgQ2VudGVyMSUwIwYDVQQDDBxULVRlbGVTZWMgR2xvYmFsUm9vdCBDbGFzcyAy
MB4XDTE2MDIyMjEzMzgyMloXDTMxMDIyMjIzNTk1OVowgZUxCzAJBgNVBAYTAkRFMUUwQwYDVQQK
EzxWZXJlaW4genVyIEZvZXJkZXJ1bmcgZWluZXMgRGV1dHNjaGVuIEZvcnNjaHVuZ3NuZXR6ZXMg
ZS4gVi4xEDAOBgNVBAsTB0RGTi1QS0kxLTArBgNVBAMTJERGTi1WZXJlaW4gQ2VydGlmaWNhdGlv
biBBdXRob3JpdHkgMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMtg1/9moUHN0vqH
l4pzq5lN6mc5WqFggEcVToyVsuXPztNXS43O+FZsFVV2B+pG/cgDRWM+cNSrVICxI5y+NyipCf8F
XRgPxJiZN7Mg9mZ4F4fCnQ7MSjLnFp2uDo0peQcAIFTcFV9Kltd4tjTTwXS1nem/wHdN6r1ZB+Ba
L2w8pQDcNb1lDY9/Mm3yWmpLYgHurDg0WUU2SQXaeMpqbVvAgWsRzNI8qIv4cRrKO+KA3Ra0Z3qL
NupOkSk9s1FcragMvp0049ENF4N1xDkesJQLEvHVaY4l9Lg9K7/AjsMeO6W/VRCrKq4Xl14zzsjz
9AkH4wKGMUZrAcUQDBHHWekCAwEAAaOCAXQwggFwMA4GA1UdDwEB/wQEAwIBBjAdBgNVHQ4EFgQU
k+PYMiba1fFKpZFK4OpL4qIMz+EwHwYDVR0jBBgwFoAUv1kgNgB5oKAia4zV8mHSuCzLgkowEgYD
VR0TAQH/BAgwBgEB/wIBAjAzBgNVHSAELDAqMA8GDSsGAQQBga0hgiwBAQQwDQYLKwYBBAGBrSGC
LB4wCAYGZ4EMAQICMEwGA1UdHwRFMEMwQaA/oD2GO2h0dHA6Ly9wa2kwMzM2LnRlbGVzZWMuZGUv
cmwvVGVsZVNlY19HbG9iYWxSb290X0NsYXNzXzIuY3JsMIGGBggrBgEFBQcBAQR6MHgwLAYIKwYB
BQUHMAGGIGh0dHA6Ly9vY3NwMDMzNi50ZWxlc2VjLmRlL29jc3ByMEgGCCsGAQUFBzAChjxodHRw
Oi8vcGtpMDMzNi50ZWxlc2VjLmRlL2NydC9UZWxlU2VjX0dsb2JhbFJvb3RfQ2xhc3NfMi5jZXIw
DQYJKoZIhvcNAQELBQADggEBAIcL/z4Cm2XIVi3WO5qYi3FP2ropqiH5Ri71sqQPrhE4eTizDnS6
dl2e6BiClmLbTDPo3flq3zK9LExHYFV/53RrtCyD2HlrtrdNUAtmB7Xts5et6u5/MOaZ/SLick0+
hFvu+c+Z6n/XUjkurJgARH5pO7917tALOxrN5fcPImxHhPalR6D90Bo0fa3SPXez7vTXTf/D6OWS
T1k+kEcQSrCFWMBvf/iu7QhCnh7U3xQuTY+8npTD5+32GPg8SecmqKc22CzeIs2LgtjZeOJVEqM7
h0S2EQvVDFKvaYwPBt/QolOLV5h7z/0HJPT8vcP9SpIClxvyt7bPZYoaorVyGTkwggWsMIIElKAD
AgECAgcbY7rQHiw9MA0GCSqGSIb3DQEBCwUAMIGVMQswCQYDVQQGEwJERTFFMEMGA1UEChM8VmVy
ZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRzY2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYu
MRAwDgYDVQQLEwdERk4tUEtJMS0wKwYDVQQDEyRERk4tVmVyZWluIENlcnRpZmljYXRpb24gQXV0
aG9yaXR5IDIwHhcNMTYwNTI0MTEzODQwWhcNMzEwMjIyMjM1OTU5WjCBjTELMAkGA1UEBhMCREUx
RTBDBgNVBAoMPFZlcmVpbiB6dXIgRm9lcmRlcnVuZyBlaW5lcyBEZXV0c2NoZW4gRm9yc2NodW5n
c25ldHplcyBlLiBWLjEQMA4GA1UECwwHREZOLVBLSTElMCMGA1UEAwwcREZOLVZlcmVpbiBHbG9i
YWwgSXNzdWluZyBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJ07eRxH3h+Gy8Zp
1xCeOdfZojDbchwFfylfS2jxrRnWTOFrG7ELf6Gr4HuLi9gtzm6IOhDuV+UefwRRNuu6cG1joL6W
LkDh0YNMZj0cZGnlm6Stcq5oOVGHecwX064vXWNxSzl660Knl5BpBb+Q/6RAcL0D57+eGIgfn5mI
TQ5HjUhfZZkQ0tkqSe3BuS0dnxLLFdM/fx5ULzquk1enfnjK1UriGuXtQX1TX8izKvWKMKztFwUk
P7agCwf9TRqaA1KgNpzeJIdl5Of6x5ZzJBTN0OgbaJ4YWa52fvfRCng8h0uwN89Tyjo4EPPLR22M
ZD08WkVKusqAfLjz56dMTM0CAwEAAaOCAgUwggIBMBIGA1UdEwEB/wQIMAYBAf8CAQEwDgYDVR0P
AQH/BAQDAgEGMCkGA1UdIAQiMCAwDQYLKwYBBAGBrSGCLB4wDwYNKwYBBAGBrSGCLAEBBDAdBgNV
HQ4EFgQUazqYi/nyU4na4K2yMh4JH+iqO3QwHwYDVR0jBBgwFoAUk+PYMiba1fFKpZFK4OpL4qIM
z+EwgY8GA1UdHwSBhzCBhDBAoD6gPIY6aHR0cDovL2NkcDEucGNhLmRmbi5kZS9nbG9iYWwtcm9v
dC1nMi1jYS9wdWIvY3JsL2NhY3JsLmNybDBAoD6gPIY6aHR0cDovL2NkcDIucGNhLmRmbi5kZS9n
bG9iYWwtcm9vdC1nMi1jYS9wdWIvY3JsL2NhY3JsLmNybDCB3QYIKwYBBQUHAQEEgdAwgc0wMwYI
KwYBBQUHMAGGJ2h0dHA6Ly9vY3NwLnBjYS5kZm4uZGUvT0NTUC1TZXJ2ZXIvT0NTUDBKBggrBgEF
BQcwAoY+aHR0cDovL2NkcDEucGNhLmRmbi5kZS9nbG9iYWwtcm9vdC1nMi1jYS9wdWIvY2FjZXJ0
L2NhY2VydC5jcnQwSgYIKwYBBQUHMAKGPmh0dHA6Ly9jZHAyLnBjYS5kZm4uZGUvZ2xvYmFsLXJv
b3QtZzItY2EvcHViL2NhY2VydC9jYWNlcnQuY3J0MA0GCSqGSIb3DQEBCwUAA4IBAQCBeEWkTqR/
DlXwCbFqPnjMaDWpHPOVnj/z+N9rOHeJLI21rT7H8pTNoAauusyosa0zCLYkhmI2THhuUPDVbmCN
T1IxQ5dGdfBi5G5mUcFCMWdQ5UnnOR7Ln8qGSN4IFP8VSytmm6A4nwDO/afr0X9XLchMX9wQEZc+
lgQCXISoKTlslPwQkgZ7nu7YRrQbtQMMONncsKk/cQYLsgMHM8KNSGMlJTx6e1du94oFOO+4oK4v
9NsH1VuEGMGpuEvObJAaguS5Pfp38dIfMwK/U+d2+dwmJUFvL6Yb+qQTkPp8ftkLYF3sv8pBoGH7
EUkp2KgtdRXYShjqFu9VNCIaE40GMIIFtzCCBJ+gAwIBAgIMIU5ml8OE5LpKo0v7MA0GCSqGSIb3
DQEBCwUAMIGNMQswCQYDVQQGEwJERTFFMEMGA1UECgw8VmVyZWluIHp1ciBGb2VyZGVydW5nIGVp
bmVzIERldXRzY2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLDAdERk4tUEtJMSUw
IwYDVQQDDBxERk4tVmVyZWluIEdsb2JhbCBJc3N1aW5nIENBMB4XDTE5MDcxNzA5MjMyM1oXDTIy
MDcxNjA5MjMyM1owSDELMAkGA1UEBhMCREUxHjAcBgNVBAoMFVVuaXZlcnNpdGFldCBLb25zdGFu
ejEZMBcGA1UEAwwQTWFyY2VsIFdhbGR2b2dlbDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoC
ggEBALf0FYcKDQOVTTFvJAoCo/eUoBICcKRP714JbUfSdhPadbnX/x9M6vJdJ2WP/c7vEujC79GO
VxvodhJERTExWqciMagIzS+bBY9bPFV8V8InOr+0gUJ2Qe9RMSjWREhctBKW//9AlEj0ZTzOyaUw
4lpKMrIMyKLtnLT9eAML1bU4XCACOKjA7uwXHwVbjJZV1KlEA6kmJzeGrzjx17JRV8ORVVIfgmU3
+Y/MX7PbefvzBLg3nGS96zvbsdxWATHorYZVYFWLvMfTBg+crn6uXYQQ3EeLRZek8HefR8TVS4Ho
f3akKgyuXhmxTK/9O7fx0C83diPENgcjJg+8Km/8yH0CAwEAAaOCAlkwggJVMD4GA1UdIAQ3MDUw
DwYNKwYBBAGBrSGCLAEBBDAQBg4rBgEEAYGtIYIsAQEEBDAQBg4rBgEEAYGtIYIsAgEEBDAJBgNV
HRMEAjAAMA4GA1UdDwEB/wQEAwIF4DAdBgNVHSUEFjAUBggrBgEFBQcDAgYIKwYBBQUHAwQwHQYD
VR0OBBYEFFO09z+YW7pEDNs2o5LvKaY7LcPDMB8GA1UdIwQYMBaAFGs6mIv58lOJ2uCtsjIeCR/o
qjt0MCsGA1UdEQQkMCKBIG1hcmNlbC53YWxkdm9nZWxAdW5pLWtvbnN0YW56LmRlMIGNBgNVHR8E
gYUwgYIwP6A9oDuGOWh0dHA6Ly9jZHAxLnBjYS5kZm4uZGUvZGZuLWNhLWdsb2JhbC1nMi9wdWIv
Y3JsL2NhY3JsLmNybDA/oD2gO4Y5aHR0cDovL2NkcDIucGNhLmRmbi5kZS9kZm4tY2EtZ2xvYmFs
LWcyL3B1Yi9jcmwvY2FjcmwuY3JsMIHbBggrBgEFBQcBAQSBzjCByzAzBggrBgEFBQcwAYYnaHR0
cDovL29jc3AucGNhLmRmbi5kZS9PQ1NQLVNlcnZlci9PQ1NQMEkGCCsGAQUFBzAChj1odHRwOi8v
Y2RwMS5wY2EuZGZuLmRlL2Rmbi1jYS1nbG9iYWwtZzIvcHViL2NhY2VydC9jYWNlcnQuY3J0MEkG
CCsGAQUFBzAChj1odHRwOi8vY2RwMi5wY2EuZGZuLmRlL2Rmbi1jYS1nbG9iYWwtZzIvcHViL2Nh
Y2VydC9jYWNlcnQuY3J0MA0GCSqGSIb3DQEBCwUAA4IBAQBE7F48ds9um3qAAuWD+dgjEh7ibi6a
wjBTgCnmOEzRvfBbYr7blR+vsaaNF7SuJF1O1R/00jXOXCiU+KE+2fK9NFLYoddx0PLHzWF1Xfx8
jbzHt8AtGnhXGB6rpH1YFB6cu9h8VYANk6WNsTq26gXA9HMduh0iVD/JL6sDQU6tCQM7fTY0dD0J
LmbCY1MkUq2m/7tqCUNxAL6F3MbqNk0yWAE8GUhTO4PbBLLJqhghMiE3rQKFMkWgsa7dGkUY08Y9
aKQCXlhEZSgjIsLRxFlcIJwnPBm3l+/gmoNOpyFNJ+4tvSLkF8Oj2SJaCjKe7pVz5uv8uuD+nfAC
dqRm+yafMIIFtzCCBJ+gAwIBAgIMIU5ml8OE5LpKo0v7MA0GCSqGSIb3DQEBCwUAMIGNMQswCQYD
VQQGEwJERTFFMEMGA1UECgw8VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRzY2hlbiBG
b3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLDAdERk4tUEtJMSUwIwYDVQQDDBxERk4tVmVy
ZWluIEdsb2JhbCBJc3N1aW5nIENBMB4XDTE5MDcxNzA5MjMyM1oXDTIyMDcxNjA5MjMyM1owSDEL
MAkGA1UEBhMCREUxHjAcBgNVBAoMFVVuaXZlcnNpdGFldCBLb25zdGFuejEZMBcGA1UEAwwQTWFy
Y2VsIFdhbGR2b2dlbDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALf0FYcKDQOVTTFv
JAoCo/eUoBICcKRP714JbUfSdhPadbnX/x9M6vJdJ2WP/c7vEujC79GOVxvodhJERTExWqciMagI
zS+bBY9bPFV8V8InOr+0gUJ2Qe9RMSjWREhctBKW//9AlEj0ZTzOyaUw4lpKMrIMyKLtnLT9eAML
1bU4XCACOKjA7uwXHwVbjJZV1KlEA6kmJzeGrzjx17JRV8ORVVIfgmU3+Y/MX7PbefvzBLg3nGS9
6zvbsdxWATHorYZVYFWLvMfTBg+crn6uXYQQ3EeLRZek8HefR8TVS4Hof3akKgyuXhmxTK/9O7fx
0C83diPENgcjJg+8Km/8yH0CAwEAAaOCAlkwggJVMD4GA1UdIAQ3MDUwDwYNKwYBBAGBrSGCLAEB
BDAQBg4rBgEEAYGtIYIsAQEEBDAQBg4rBgEEAYGtIYIsAgEEBDAJBgNVHRMEAjAAMA4GA1UdDwEB
/wQEAwIF4DAdBgNVHSUEFjAUBggrBgEFBQcDAgYIKwYBBQUHAwQwHQYDVR0OBBYEFFO09z+YW7pE
DNs2o5LvKaY7LcPDMB8GA1UdIwQYMBaAFGs6mIv58lOJ2uCtsjIeCR/oqjt0MCsGA1UdEQQkMCKB
IG1hcmNlbC53YWxkdm9nZWxAdW5pLWtvbnN0YW56LmRlMIGNBgNVHR8EgYUwgYIwP6A9oDuGOWh0
dHA6Ly9jZHAxLnBjYS5kZm4uZGUvZGZuLWNhLWdsb2JhbC1nMi9wdWIvY3JsL2NhY3JsLmNybDA/
oD2gO4Y5aHR0cDovL2NkcDIucGNhLmRmbi5kZS9kZm4tY2EtZ2xvYmFsLWcyL3B1Yi9jcmwvY2Fj
cmwuY3JsMIHbBggrBgEFBQcBAQSBzjCByzAzBggrBgEFBQcwAYYnaHR0cDovL29jc3AucGNhLmRm
bi5kZS9PQ1NQLVNlcnZlci9PQ1NQMEkGCCsGAQUFBzAChj1odHRwOi8vY2RwMS5wY2EuZGZuLmRl
L2Rmbi1jYS1nbG9iYWwtZzIvcHViL2NhY2VydC9jYWNlcnQuY3J0MEkGCCsGAQUFBzAChj1odHRw
Oi8vY2RwMi5wY2EuZGZuLmRlL2Rmbi1jYS1nbG9iYWwtZzIvcHViL2NhY2VydC9jYWNlcnQuY3J0
MA0GCSqGSIb3DQEBCwUAA4IBAQBE7F48ds9um3qAAuWD+dgjEh7ibi6awjBTgCnmOEzRvfBbYr7b
lR+vsaaNF7SuJF1O1R/00jXOXCiU+KE+2fK9NFLYoddx0PLHzWF1Xfx8jbzHt8AtGnhXGB6rpH1Y
FB6cu9h8VYANk6WNsTq26gXA9HMduh0iVD/JL6sDQU6tCQM7fTY0dD0JLmbCY1MkUq2m/7tqCUNx
AL6F3MbqNk0yWAE8GUhTO4PbBLLJqhghMiE3rQKFMkWgsa7dGkUY08Y9aKQCXlhEZSgjIsLRxFlc
IJwnPBm3l+/gmoNOpyFNJ+4tvSLkF8Oj2SJaCjKe7pVz5uv8uuD+nfACdqRm+yafMYIDnTCCA5kC
AQEwgZ4wgY0xCzAJBgNVBAYTAkRFMUUwQwYDVQQKDDxWZXJlaW4genVyIEZvZXJkZXJ1bmcgZWlu
ZXMgRGV1dHNjaGVuIEZvcnNjaHVuZ3NuZXR6ZXMgZS4gVi4xEDAOBgNVBAsMB0RGTi1QS0kxJTAj
BgNVBAMMHERGTi1WZXJlaW4gR2xvYmFsIElzc3VpbmcgQ0ECDCFOZpfDhOS6SqNL+zANBglghkgB
ZQMEAgEFAKCCAc8wGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMjAw
MjEwMTUwMDQ5WjAvBgkqhkiG9w0BCQQxIgQgiyNrkr6sB8uaPhzJyNgd/Cg+03HKkem+dBxGMwIt
jIIwga8GCSsGAQQBgjcQBDGBoTCBnjCBjTELMAkGA1UEBhMCREUxRTBDBgNVBAoMPFZlcmVpbiB6
dXIgRm9lcmRlcnVuZyBlaW5lcyBEZXV0c2NoZW4gRm9yc2NodW5nc25ldHplcyBlLiBWLjEQMA4G
A1UECwwHREZOLVBLSTElMCMGA1UEAwwcREZOLVZlcmVpbiBHbG9iYWwgSXNzdWluZyBDQQIMIU5m
l8OE5LpKo0v7MIGxBgsqhkiG9w0BCRACCzGBoaCBnjCBjTELMAkGA1UEBhMCREUxRTBDBgNVBAoM
PFZlcmVpbiB6dXIgRm9lcmRlcnVuZyBlaW5lcyBEZXV0c2NoZW4gRm9yc2NodW5nc25ldHplcyBl
LiBWLjEQMA4GA1UECwwHREZOLVBLSTElMCMGA1UEAwwcREZOLVZlcmVpbiBHbG9iYWwgSXNzdWlu
ZyBDQQIMIU5ml8OE5LpKo0v7MA0GCSqGSIb3DQEBAQUABIIBAI63UIekg/e9tsQr/yvRUhtYS0Wn
crQlNFQfVGAes+lpV3Q0WGxZOuROfYvpQ7hhGhWna9BwfhltIz/KmGcwswrrJfJUC1CkXIjgMIQr
jyINjFzCUZMFk/rOh1MtAPHYTgD9fRsgPwimZHP3hI9hdXjjzPSpWK1jUAOPSZ680bjnQiNVY0OX
j62bqRO3iAPg4WijYFPgePCvhN4Kwo7W9aZUbm6Egdna+YTrpdW8QiA0VYhc/MKCLkl46J3N/9W9
L37mVBU1Fu01qGv4ZuMpMyyJNXqBKjQeZWf1afMyG425do9YckOpkskYQ8ac5f+D8c9wMaMlysSm
VfI+0FiAN3wAAAAAAAA=


--=-azVBy5hFr493HO3LGIVb--

