Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC537D94AA
	for <lists.bridge@lfdr.de>; Fri, 27 Oct 2023 12:06:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F3D9F6FA4C;
	Fri, 27 Oct 2023 10:06:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F3D9F6FA4C
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=QbAUJl0R
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YOrOTjR6A5N0; Fri, 27 Oct 2023 10:06:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id A371A703FB;
	Fri, 27 Oct 2023 10:06:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A371A703FB
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 48833C008C;
	Fri, 27 Oct 2023 10:06:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CB4B9C0032
 for <bridge@lists.linux-foundation.org>; Fri, 27 Oct 2023 10:06:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A604E703FE
 for <bridge@lists.linux-foundation.org>; Fri, 27 Oct 2023 10:06:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A604E703FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OuuzO4n7eRsN for <bridge@lists.linux-foundation.org>;
 Fri, 27 Oct 2023 10:06:05 +0000 (UTC)
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com
 [IPv6:2a00:1450:4864:20::236])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0A8196FA4C
 for <bridge@lists.linux-foundation.org>; Fri, 27 Oct 2023 10:06:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A8196FA4C
Received: by mail-lj1-x236.google.com with SMTP id
 38308e7fff4ca-2c5028e5b88so26305371fa.3
 for <bridge@lists.linux-foundation.org>; Fri, 27 Oct 2023 03:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1698401162; x=1699005962;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=EzUFAA0TdPmj/Cb4HKxf5oHBR+/7qG5RzYUy2yOEkT4=;
 b=QbAUJl0RJy9Dp597RzPngMlhIrnOzrPZxinJG872JxBDCFZt8ImF0G+53LzGf/8bB4
 3d7hZGvTDmZ0X0DAYkmbcXjs/v5s2NGRmD5G2YtTcthHkfZwhQahaYHuknJlv1xOUgAs
 GGKvS9Pju+3yHQtt7V66GKBYSVj6diBfF1iJyVsKqW1vfbl5ZvJ5+nb7gVGd6E4EtbfX
 UkZ63RCg4VwioFTzw4n0W44/EXVIdnEnH0Dv4d01CgzDJX2FZhbR0HaS40QDE83yP5Xb
 AvuKAW5Cqyh/WwFYeuIkNjpe0QFhO0gM6TrE+gnHdYE2qI7KggvLK2xuK1yyZCnuv2mv
 DXkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698401162; x=1699005962;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=EzUFAA0TdPmj/Cb4HKxf5oHBR+/7qG5RzYUy2yOEkT4=;
 b=bnYQZLZujjrAQhzWktRREFhMltfUldbl0LhoLDxY+lWODaeu4emDV8Bg/0Ch2Zy34e
 B21SUR0hp9Ys5dRw+Ot4t6hiJIRWzdJ1JpiRem6rqXYzADnpHCwQAgW4J3HyElOmZJ0k
 43SE/Va72C+qAM5D1IibwDfX1j+nn3ZvhUauIFf1ZirpgG74CJpMPwWNumtT76X7WeO3
 CgW0gk0Keh+8iuIYYnfYppO/2q/NfgrzBUsFzUdgg9FvNh8JpuvpXvv1c2purLfyQ8ju
 0rkXzmIhtajHiZoeFoqrPEGsV66Cp4p1SQyn9yDTAdXpV28Jxh09tNp4JuRZW+iY7Ffk
 udHA==
X-Gm-Message-State: AOJu0YyXIZQMIlQVcYU//aqmF0BtQeK2/p2B18IvP3r3IafGSrxbXVSZ
 zGt50avyxuni06d4isYJ6qzMiw==
X-Google-Smtp-Source: AGHT+IHMw/VGq/ex38Jd96pI1ZaMYN2dDPL+SSmNkWe+mKerLueKy0bGPXr07gAo++VUysXUUy1H4A==
X-Received: by 2002:a05:651c:319:b0:2c5:7afd:75a1 with SMTP id
 a25-20020a05651c031900b002c57afd75a1mr1598290ljp.44.1698401162166; 
 Fri, 27 Oct 2023 03:06:02 -0700 (PDT)
Received: from dev.. (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 j15-20020adfb30f000000b0032d8eecf901sm1430586wrd.3.2023.10.27.03.06.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Oct 2023 03:06:01 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Fri, 27 Oct 2023 13:05:49 +0300
Message-Id: <20231027100549.1695865-1-razor@blackwall.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20231026190101.1413939-1-kuba@kernel.org>
References: <20231026190101.1413939-1-kuba@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next] net: bridge: fill in MODULE_DESCRIPTION()
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

Fill in bridge's module description.

Suggested-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 net/bridge/br.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/bridge/br.c b/net/bridge/br.c
index a6e94ceb7c9a..cda9d7871f72 100644
--- a/net/bridge/br.c
+++ b/net/bridge/br.c
@@ -477,3 +477,4 @@ module_exit(br_deinit)
 MODULE_LICENSE("GPL");
 MODULE_VERSION(BR_VERSION);
 MODULE_ALIAS_RTNL_LINK("bridge");
+MODULE_DESCRIPTION("Ethernet bridge driver");
-- 
2.38.1

