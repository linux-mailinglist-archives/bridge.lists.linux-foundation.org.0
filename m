Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3446B2B1835
	for <lists.bridge@lfdr.de>; Fri, 13 Nov 2020 10:27:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DC305878D5;
	Fri, 13 Nov 2020 09:27:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UrsXV5-1tFUz; Fri, 13 Nov 2020 09:27:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 523BF87830;
	Fri, 13 Nov 2020 09:27:38 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 344ECC0FAA;
	Fri, 13 Nov 2020 09:27:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 022D6C0FAA
 for <bridge@lists.linux-foundation.org>; Fri, 13 Nov 2020 09:27:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DC8BB87425
 for <bridge@lists.linux-foundation.org>; Fri, 13 Nov 2020 09:27:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hRQ5CKnhdimX for <bridge@lists.linux-foundation.org>;
 Fri, 13 Nov 2020 09:27:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0B1E987120
 for <bridge@lists.linux-foundation.org>; Fri, 13 Nov 2020 09:27:34 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id t9so9897083edq.8
 for <bridge@lists.linux-foundation.org>; Fri, 13 Nov 2020 01:27:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding;
 bh=9fNbzgPON6KHDunvl15bGkh4oFDVo6Bko7uyvRmoQSc=;
 b=AYiLwogs8kf6Iwr8kXyup8n3ucLyqf1J2I3xU3xc+I5CSgUysu1s/jeDdmUEr9DAmk
 CGnoQAqio8NBSo4ZtYkb62zdsQ8imzawCp11YjTXfAdQiEHmrB9hhsp4dV4X1u16RfHn
 emtHSFbzOuCcrzJ0+MQuPay3vV9HbA7nO5vsYfy2wNqfnTs/mlBvCY68Ea4YWT5+XaZi
 Y9ZbaVys/KtZjrzZ5lhvD2ZTGNF6gtQxP+BZKAxfAwZDkHRuvg5hB+bdnnnCgR35f7RE
 52eL7nOAhsb3KqchDukHYbVutdzmcHne5l/qFg0GRmo6PiAPBRfbUbr2vFoIISwA8t9O
 kG0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-transfer-encoding;
 bh=9fNbzgPON6KHDunvl15bGkh4oFDVo6Bko7uyvRmoQSc=;
 b=nwMZSbb3cEbXQP9ZSKVdef9V0okd2FkYhsHB+YcS34JYA9XOZXa8pSWAf3RwhNeotF
 ToqS9yWpPgSCnO72xZGWVDplWA36TzDdnZoSWoGUa33cmanTfNsApPha68E4wemsiCFy
 YcxGOUnHBJUc65puBYRirdILRTX748OTusdgsrhxADznKPwYLNybRGstlWvZE1Pxfs59
 V6Z7yMVZlwVtnmiWx2lSCiKrKPh2G5TDh9IfQvDlrhYpQBtpXcfnS+0tukEqN5H4NynN
 pDqu9/teMq6LK4Behle6cGte/9gE+kTeScVYZcknIlw7/Vc7+jklEl9M1s47uE0QHeAN
 Gohg==
X-Gm-Message-State: AOAM533pVCccy1blmHGTthW+eu0+IwXFcEt9Wu5lNtli1MdyvvTdG94B
 9vSb7F6jItn10JEPij1iB7kium2CMddH3g==
X-Google-Smtp-Source: ABdhPJxEFT/2KJjDV/37dfW14P06RBqhHPqm/0ARcnY+bXbdasWJRu8uJuCrel0yfmNux+ayNESU9A==
X-Received: by 2002:a50:c19a:: with SMTP id m26mr1480464edf.302.1605259653116; 
 Fri, 13 Nov 2020 01:27:33 -0800 (PST)
Received: from ?IPv6:2003:ea:8f23:2800:e113:5d8d:7b96:ca98?
 (p200300ea8f232800e1135d8d7b96ca98.dip0.t-ipconnect.de.
 [2003:ea:8f23:2800:e113:5d8d:7b96:ca98])
 by smtp.googlemail.com with ESMTPSA id jw7sm3176430ejb.54.2020.11.13.01.27.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Nov 2020 01:27:32 -0800 (PST)
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov
 <nikolay@nvidia.com>, David Miller <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <58ea9963-77ad-a7cf-8dfd-fc95ab95f606@gmail.com>
Date: Fri, 13 Nov 2020 10:27:27 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 bridge@lists.linux-foundation.org
Subject: [Bridge] [PATCH net] net: bridge: add missing counters to
 ndo_get_stats64 callback
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

In br_forward.c and br_input.c fields dev->stats.tx_dropped and
dev->stats.multicast are populated, but they are ignored in
ndo_get_stats64.

Fixes: 28172739f0a2 ("net: fix 64 bit counters on 32 bit arches")
Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
Patch will not apply cleanly on kernel versions that don't have
dev_fetch_sw_netstats() yet.
---
 net/bridge/br_device.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
index 387403931..77bcc8487 100644
--- a/net/bridge/br_device.c
+++ b/net/bridge/br_device.c
@@ -207,6 +207,7 @@ static void br_get_stats64(struct net_device *dev,
 {
 	struct net_bridge *br = netdev_priv(dev);
 
+	netdev_stats_to_stats64(stats, &dev->stats);
 	dev_fetch_sw_netstats(stats, br->stats);
 }
 
-- 
2.29.2

