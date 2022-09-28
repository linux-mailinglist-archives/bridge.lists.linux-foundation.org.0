Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFCD5F2B61
	for <lists.bridge@lfdr.de>; Mon,  3 Oct 2022 10:04:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B63124090D;
	Mon,  3 Oct 2022 08:04:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B63124090D
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=UCNpa4HM
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TBG7cjJno6UQ; Mon,  3 Oct 2022 08:04:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id A6B12408F1;
	Mon,  3 Oct 2022 08:04:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6B12408F1
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B5A71C0081;
	Mon,  3 Oct 2022 08:04:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5C31DC002D
 for <bridge@lists.linux-foundation.org>; Wed, 28 Sep 2022 17:58:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 36D25401B1
 for <bridge@lists.linux-foundation.org>; Wed, 28 Sep 2022 17:58:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 36D25401B1
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com
 header.a=rsa-sha256 header.s=google header.b=UCNpa4HM
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UwPiSuD1KCfr for <bridge@lists.linux-foundation.org>;
 Wed, 28 Sep 2022 17:58:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DDE5740127
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com
 [IPv6:2607:f8b0:4864:20::72d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DDE5740127
 for <bridge@lists.linux-foundation.org>; Wed, 28 Sep 2022 17:58:53 +0000 (UTC)
Received: by mail-qk1-x72d.google.com with SMTP id d17so8328908qko.13
 for <bridge@lists.linux-foundation.org>; Wed, 28 Sep 2022 10:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:message-id:date:subject:cc:to:from:from:to:cc:subject
 :date; bh=PBO0dglEiUc6f7RD4HIk5Z3BgGPFPkfKBI2dxZFfQlM=;
 b=UCNpa4HM7cTu7BYEViwI5qfxtIEKpZXU5l+QYdLUCmO++mOyPxRhC7KtM4EKXvvqdK
 yiN7Yk6HjgfexqH/GM9hM9Wqis9hcqwCJK31PXwyotzpXE8gXoeuq8hNiVFqTtx2auvL
 tgIWzuy1HxwTfxQ4NmX8bhzCwS6LY4DfTd44s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:message-id:date:subject:cc:to:from:x-gm-message-state
 :from:to:cc:subject:date;
 bh=PBO0dglEiUc6f7RD4HIk5Z3BgGPFPkfKBI2dxZFfQlM=;
 b=RdO3hffYzLgNrKg63b0aDqkhHbzHHdzcabdTIMyceMCcWvPl2/+lHmusLiR700Cc3p
 09tuwlYAekO3/5K7jr03Ih+VLClFuuQTdf/Ij5hUeCCyn4zN9UpXGDlAEoNiVopaKq4p
 rzU+l1M9KKpsxvneBMAPp6CMDjqT2SENTEjpDkfiWMznORNZVX/nmK/16tO0piWcs1hA
 NoDs+gLScGhIlybaRXpQNLwyFf10G9ZOE0q5l037aS/PgxvLAKWeYdn5fwln5i+DStmS
 Fuk74ujkxnarLyNpxiSAN9zBO8nB9yxPC7mjcuyNxEXONJFBanGb7oP21l/k85OaZDwc
 PDIg==
X-Gm-Message-State: ACrzQf02su/t/aJhu9f8x6f8k6Nx38E+MU9g1Yt7bUplFWhN6irlSf8W
 KxfOwbXRr2oKPt923QhP36sFgyz48+ZmY+SgdZMkOBRju5As1zEDDco/OpnGSA1vHZYCayTFsTz
 hyIxZ2W/f2BXBLkgKI5NwzA==
X-Google-Smtp-Source: AMsMyM7bwAIxxar3j76+GeBHEFaamoE+exxIauiU6vylMUKqxnQ7U8HDP6rwUHV4Zb3V0qYTKNxrNg==
X-Received: by 2002:a05:620a:2627:b0:6b8:c8c3:78f9 with SMTP id
 z39-20020a05620a262700b006b8c8c378f9mr22204177qko.641.1664387932617; 
 Wed, 28 Sep 2022 10:58:52 -0700 (PDT)
Received: from linuxpc-ThinkServer-TS140.dhcp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id
 dt35-20020a05620a47a300b006ce580c2663sm3706932qkb.35.2022.09.28.10.58.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Sep 2022 10:58:51 -0700 (PDT)
To: Steven Hsieh <steven.hsieh@broadcom.com>
Date: Wed, 28 Sep 2022 10:57:58 -0700
Message-Id: <20220928175758.2106806-1-steven.hsieh@broadcom.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
 micalg=sha-256; boundary="000000000000837d1a05e9c08320"
X-Mailman-Approved-At: Mon, 03 Oct 2022 08:04:16 +0000
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH net-next] net: bridge: assign path_cost for 2.5G
	and 5G link speed
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
From: Steven Hsieh via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Steven Hsieh <steven.hsieh@broadcom.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

--000000000000837d1a05e9c08320
Content-Type: text/plain; charset="US-ASCII"

As 2.5G, 5G ethernet ports are more common and affordable,
these ports are being used in LAN bridge devices.
STP port_cost() is missing path_cost assignment for these link speeds,
causes highest cost 100 being used.
This result in lower speed port being picked
when there is loop between 5G and 1G ports.

Original path_cost: 10G=2, 1G=4, 100m=19, 10m=100
Adjusted path_cost: 10G=2, 5G=3, 2.5G=4, 1G=5, 100m=19, 10m=100
                    speed greater than 10G = 1

Signed-off-by: Steven Hsieh <steven.hsieh@broadcom.com>

---

 net/bridge/br_if.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br_if.c b/net/bridge/br_if.c
index a84a7cfb9d6d..a24a1e782e8f 100644
--- a/net/bridge/br_if.c
+++ b/net/bridge/br_if.c
@@ -40,12 +40,21 @@ static int port_cost(struct net_device *dev)
 		switch (ecmd.base.speed) {
 		case SPEED_10000:
 			return 2;
-		case SPEED_1000:
+		case SPEED_5000:
+			return 3;
+		case SPEED_2500:
 			return 4;
+		case SPEED_1000:
+			return 5;
 		case SPEED_100:
 			return 19;
 		case SPEED_10:
 			return 100;
+		case SPEED_UNKNOWN:
+			return 100;
+		default:
+			if (ecmd.base.speed > SPEED_10000)
+				return 1;
 		}
 	}
 
-- 
2.34.1


-- 
This electronic communication and the information and any files transmitted 
with it, or attached to it, are confidential and are intended solely for 
the use of the individual or entity to whom it is addressed and may contain 
information that is confidential, legally privileged, protected by privacy 
laws, or otherwise restricted from disclosure to anyone else. If you are 
not the intended recipient or the person responsible for delivering the 
e-mail to the intended recipient, you are hereby notified that any use, 
copying, distributing, dissemination, forwarding, printing, or copying of 
this e-mail is strictly prohibited. If you received this e-mail in error, 
please return the e-mail to the sender, delete it from your computer, and 
destroy any printed copy of it.

--000000000000837d1a05e9c08320
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIIQbQYJKoZIhvcNAQcCoIIQXjCCEFoCAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
gg3EMIIFDTCCA/WgAwIBAgIQeEqpED+lv77edQixNJMdADANBgkqhkiG9w0BAQsFADBMMSAwHgYD
VQQLExdHbG9iYWxTaWduIFJvb3QgQ0EgLSBSMzETMBEGA1UEChMKR2xvYmFsU2lnbjETMBEGA1UE
AxMKR2xvYmFsU2lnbjAeFw0yMDA5MTYwMDAwMDBaFw0yODA5MTYwMDAwMDBaMFsxCzAJBgNVBAYT
AkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhHbG9iYWxTaWduIEdDQyBS
MyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
vbCmXCcsbZ/a0fRIQMBxp4gJnnyeneFYpEtNydrZZ+GeKSMdHiDgXD1UnRSIudKo+moQ6YlCOu4t
rVWO/EiXfYnK7zeop26ry1RpKtogB7/O115zultAz64ydQYLe+a1e/czkALg3sgTcOOcFZTXk38e
aqsXsipoX1vsNurqPtnC27TWsA7pk4uKXscFjkeUE8JZu9BDKaswZygxBOPBQBwrA5+20Wxlk6k1
e6EKaaNaNZUy30q3ArEf30ZDpXyfCtiXnupjSK8WU2cK4qsEtj09JS4+mhi0CTCrCnXAzum3tgcH
cHRg0prcSzzEUDQWoFxyuqwiwhHu3sPQNmFOMwIDAQABo4IB2jCCAdYwDgYDVR0PAQH/BAQDAgGG
MGAGA1UdJQRZMFcGCCsGAQUFBwMCBggrBgEFBQcDBAYKKwYBBAGCNxQCAgYKKwYBBAGCNwoDBAYJ
KwYBBAGCNxUGBgorBgEEAYI3CgMMBggrBgEFBQcDBwYIKwYBBQUHAxEwEgYDVR0TAQH/BAgwBgEB
/wIBADAdBgNVHQ4EFgQUljPR5lgXWzR1ioFWZNW+SN6hj88wHwYDVR0jBBgwFoAUj/BLf6guRSSu
TVD6Y5qL3uLdG7wwegYIKwYBBQUHAQEEbjBsMC0GCCsGAQUFBzABhiFodHRwOi8vb2NzcC5nbG9i
YWxzaWduLmNvbS9yb290cjMwOwYIKwYBBQUHMAKGL2h0dHA6Ly9zZWN1cmUuZ2xvYmFsc2lnbi5j
b20vY2FjZXJ0L3Jvb3QtcjMuY3J0MDYGA1UdHwQvMC0wK6ApoCeGJWh0dHA6Ly9jcmwuZ2xvYmFs
c2lnbi5jb20vcm9vdC1yMy5jcmwwWgYDVR0gBFMwUTALBgkrBgEEAaAyASgwQgYKKwYBBAGgMgEo
CjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzAN
BgkqhkiG9w0BAQsFAAOCAQEAdAXk/XCnDeAOd9nNEUvWPxblOQ/5o/q6OIeTYvoEvUUi2qHUOtbf
jBGdTptFsXXe4RgjVF9b6DuizgYfy+cILmvi5hfk3Iq8MAZsgtW+A/otQsJvK2wRatLE61RbzkX8
9/OXEZ1zT7t/q2RiJqzpvV8NChxIj+P7WTtepPm9AIj0Keue+gS2qvzAZAY34ZZeRHgA7g5O4TPJ
/oTd+4rgiU++wLDlcZYd/slFkaT3xg4qWDepEMjT4T1qFOQIL+ijUArYS4owpPg9NISTKa1qqKWJ
jFoyms0d0GwOniIIbBvhI2MJ7BSY9MYtWVT5jJO3tsVHwj4cp92CSFuGwunFMzCCA18wggJHoAMC
AQICCwQAAAAAASFYUwiiMA0GCSqGSIb3DQEBCwUAMEwxIDAeBgNVBAsTF0dsb2JhbFNpZ24gUm9v
dCBDQSAtIFIzMRMwEQYDVQQKEwpHbG9iYWxTaWduMRMwEQYDVQQDEwpHbG9iYWxTaWduMB4XDTA5
MDMxODEwMDAwMFoXDTI5MDMxODEwMDAwMFowTDEgMB4GA1UECxMXR2xvYmFsU2lnbiBSb290IENB
IC0gUjMxEzARBgNVBAoTCkdsb2JhbFNpZ24xEzARBgNVBAMTCkdsb2JhbFNpZ24wggEiMA0GCSqG
SIb3DQEBAQUAA4IBDwAwggEKAoIBAQDMJXaQeQZ4Ihb1wIO2hMoonv0FdhHFrYhy/EYCQ8eyip0E
XyTLLkvhYIJG4VKrDIFHcGzdZNHr9SyjD4I9DCuul9e2FIYQebs7E4B3jAjhSdJqYi8fXvqWaN+J
J5U4nwbXPsnLJlkNc96wyOkmDoMVxu9bi9IEYMpJpij2aTv2y8gokeWdimFXN6x0FNx04Druci8u
nPvQu7/1PQDhBjPogiuuU6Y6FnOM3UEOIDrAtKeh6bJPkC4yYOlXy7kEkmho5TgmYHWyn3f/kRTv
riBJ/K1AFUjRAjFhGV64l++td7dkmnq/X8ET75ti+w1s4FRpFqkD2m7pg5NxdsZphYIXAgMBAAGj
QjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBSP8Et/qC5FJK5N
UPpjmove4t0bvDANBgkqhkiG9w0BAQsFAAOCAQEAS0DbwFCq/sgM7/eWVEVJu5YACUGssxOGhigH
M8pr5nS5ugAtrqQK0/Xx8Q+Kv3NnSoPHRHt44K9ubG8DKY4zOUXDjuS5V2yq/BKW7FPGLeQkbLmU
Y/vcU2hnVj6DuM81IcPJaP7O2sJTqsyQiunwXUaMld16WCgaLx3ezQA3QY/tRG3XUyiXfvNnBB4V
14qWtNPeTCekTBtzc3b0F5nCH3oO4y0IrQocLP88q1UOD5F+NuvDV0m+4S4tfGCLw0FREyOdzvcy
a5QBqJnnLDMfOjsl0oZAzjsshnjJYS8Uuu7bVW/fhO4FCU29KNhyztNiUGUe65KXgzHZs7XKR1g/
XzCCBUwwggQ0oAMCAQICDElWEzpLC7/oQf8EyDANBgkqhkiG9w0BAQsFADBbMQswCQYDVQQGEwJC
RTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTExMC8GA1UEAxMoR2xvYmFsU2lnbiBHQ0MgUjMg
UGVyc29uYWxTaWduIDIgQ0EgMjAyMDAeFw0yMjA5MTAxMTM2MTZaFw0yNTA5MTAxMTM2MTZaMIGO
MQswCQYDVQQGEwJJTjESMBAGA1UECBMJS2FybmF0YWthMRIwEAYDVQQHEwlCYW5nYWxvcmUxFjAU
BgNVBAoTDUJyb2FkY29tIEluYy4xFTATBgNVBAMTDFN0ZXZlbiBIc2llaDEoMCYGCSqGSIb3DQEJ
ARYZc3RldmVuLmhzaWVoQGJyb2FkY29tLmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoC
ggEBAJ2xQggIxvOY2r+3q3hsfEJY8KcGfk9yaeBjxx8xdE9KBcam2b/wkjDMmo+1wgnqEW2b++GB
GfAZ+fMaeQ5tKq98HvZFgee5xLmK6DDKkU8mFeDzZqrWBuGyQjnzOtTLkiRoHd/yQjH/uzaeZZ1M
jl+WH28lSfdM7DxaOh1JsBPt6ff8iBEpjGETSIFKu5C89EasBfdPcOZCC9jIrmgS5vdW9+BggSGT
zqFsDrDD6cfwPFA8egCLRqlqcMvTsLO8Ak8PulZSDNLvAbFQEcKXLzfSS5I4bJEyNm+gDxU2ufWn
S26/TTgra4hsvkgl1igpsKFbDqYd5GXc4f+GLIfWlFUCAwEAAaOCAdowggHWMA4GA1UdDwEB/wQE
AwIFoDCBowYIKwYBBQUHAQEEgZYwgZMwTgYIKwYBBQUHMAKGQmh0dHA6Ly9zZWN1cmUuZ2xvYmFs
c2lnbi5jb20vY2FjZXJ0L2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwLmNydDBBBggrBgEFBQcw
AYY1aHR0cDovL29jc3AuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAw
TQYDVR0gBEYwRDBCBgorBgEEAaAyASgKMDQwMgYIKwYBBQUHAgEWJmh0dHBzOi8vd3d3Lmdsb2Jh
bHNpZ24uY29tL3JlcG9zaXRvcnkvMAkGA1UdEwQCMAAwSQYDVR0fBEIwQDA+oDygOoY4aHR0cDov
L2NybC5nbG9iYWxzaWduLmNvbS9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAyMC5jcmwwJAYDVR0R
BB0wG4EZc3RldmVuLmhzaWVoQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNV
HSMEGDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUo47KV++PjdaGX8yl9SYgLyqh
UFcwDQYJKoZIhvcNAQELBQADggEBACv8VBuGccogpklAkOkvfL8jtr7AUHpm2ZaG6RzE4EzvGTat
uzvVLmsDVHyVsa1ioxXjqCHYllCoea6lm9UEzsidojI+YYnkuh62tdBeZ7holVEdpaq39FmL1cdH
CSwbr9nedhgKPjQtcnY41wCwI1HMCUFiB3XW9DcBh94PSvqvYGsx0gFFJoXt2at06iqSLji8Rot+
jsXWHybl7AZDcupjJeQoApn6y0weM2xKcoG0WeN5SDDvmXTPe3AZG4n1xK1S8sjPJstMr++KiYS8
8l4ubZbXNKvsYhBY1PRITsrjcHkZbsufMbH2ZHAyxVN2QirJnb3Jocji5QBdKAX+pAAxggJtMIIC
aQIBATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQD
EyhHbG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgxJVhM6Swu/6EH/BMgw
DQYJYIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIDEzxUv1CXSnkS3eXoabLY0plfm3wmJB
v6dAfbQiteTKMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIyMDky
ODE3NTg1MlowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCG
SAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQC
ATANBgkqhkiG9w0BAQEFAASCAQBW8IwlQUKnQuQhc9ayiNMF8Ht5BmrHzzOf7dRQ5NpCFkRnkSZQ
9bUk5EbfEPk3aTRNNb5O53MC7Js5US5N0cPG0itR3PP7awBrZrulCR5keM9VdtNNEcYh/b0p1ATk
1GJZuaKLl26vj2uHsA9YUDId79OYZxrgVlNTVfTChtS1FJ7Uacw2xAUEd6gIAPGQ7uEiz9Ecnf2j
44hfVMX6d4+KWu5etmZ7YrG2x0u5a+7EISazwaRxV4VgXhX23ohMkrArk2Q2RgRfS4PsPczT/4YH
Q1ORd//Sn+iRVx3i/ZcliifWcpLnAVPd73Z23PBymXpkf/LPPNVc9cEc4KNeUL6/
--000000000000837d1a05e9c08320--
