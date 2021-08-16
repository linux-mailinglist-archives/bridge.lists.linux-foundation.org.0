Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 036543ED1AB
	for <lists.bridge@lfdr.de>; Mon, 16 Aug 2021 12:11:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0DAA840212;
	Mon, 16 Aug 2021 10:11:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ILbo2qfiBDoX; Mon, 16 Aug 2021 10:11:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 981A1400F1;
	Mon, 16 Aug 2021 10:11:48 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 42849C000E;
	Mon, 16 Aug 2021 10:11:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C2E86C000E
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 10:11:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9E03740212
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 10:11:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UdgzgaZ5Vi9C for <bridge@lists.linux-foundation.org>;
 Mon, 16 Aug 2021 10:11:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 87D70400F1
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 10:11:45 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id b15so30687258ejg.10
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 03:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qrgX9mkMySys2qqZfdyzIpqPBGrmxciDBq8IvhkKYPo=;
 b=cmDpAUSYRrg5Wn2RkMba5vTWd2xWbMFOxoa+ArS1wP2A3xTvn78pMoTnrb8qTeBiLY
 kneDtQf74WnkI2Y8xMCOkEL/gge+e6DMyVtgAKp3SMVrLookOtcZeFx8YBuxXmhDkFpO
 Pqq/b1KF3IP88Y2kV+EaOUBcyyHLij/lIa60swjCeObNXPxJUzAbYdj51GmJEYbMP9TE
 xrZR0S/lsbex5/TQ0zjas2kpZfr56+LzwhujIWvIfstqZebToQzw4PneEFZ37bTSsI48
 wIvkNdDzUvFLcBJSPDm0+rK5SBz6d8knOvpompWfVA1NVeJm3lbsl1swCGvNHKWzs32L
 NHkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qrgX9mkMySys2qqZfdyzIpqPBGrmxciDBq8IvhkKYPo=;
 b=peRn4T+eThqClY6UziUnk9GVIfkAkbR3+DBPdrrFRleNV0LZPRkwgHjofPqBRWcOV7
 TLXLEoVbjYbBHCnNFbdavFRG63+tSljpJqPivc7a7oPbWdqKMy2JOmYjpB+ho9jKogpQ
 4Dw2bN9wUnqN7ctev/nUI6YX968GEjD11NW4/bC39YYv64IUa7GAoQyZV8Y9g2kNUrTu
 Fgl49abxOgOEgPHHzGPtAgpl41f7VQLg3DfQ+AkLUS+92rQAbs/H52J+GZ/zXW0I7wnD
 YecJuq/Fc2LEgQiu6FsyX3MFYuUyUd3+2UumZoUr0T/9pf9dYjE3U8R5JrHxHoBoWLyX
 VoNQ==
X-Gm-Message-State: AOAM5332dqgld/laftndnlZgEunNjRsWwqW5HImqdsCPUuZbrPNz1TKo
 yeLlBgT79ObxBLogu9wfXktr0w==
X-Google-Smtp-Source: ABdhPJxLBUkH8+7hCQLbyq+s+xNgzWzAutZtrmlVc3fLdipGPi/vMFyIf4ywSLEqcxvWTaUE0v2RoA==
X-Received: by 2002:a17:906:4310:: with SMTP id
 j16mr15414023ejm.182.1629108703611; 
 Mon, 16 Aug 2021 03:11:43 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id a60sm4673779edf.59.2021.08.16.03.11.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Aug 2021 03:11:43 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 16 Aug 2021 13:11:31 +0300
Message-Id: <20210816101134.577413-1-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 0/3] net: bridge: mcast: fixes for mcast
	querier state
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

From: Nikolay Aleksandrov <nikolay@nvidia.com>

Hi,
These three fix querier state dumping. The first patch can be considered
a minor behaviour improvement, it avoids dumping querier state when mcast
snooping is disabled. The second patch was a report of sizeof(0) used
for nested netlink attribute size which should be just 0, and the third
patch accounts for IPv6 querier state size when allocating skb for
notifications.

Thanks,
 Nik

Nikolay Aleksandrov (3):
  net: bridge: mcast: don't dump querier state if snooping is disabled
  net: bridge: mcast: drop sizeof for nest attribute's zero size
  net: bridge: mcast: account for ipv6 size when dumping querier state

 net/bridge/br_multicast.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

-- 
2.31.1

