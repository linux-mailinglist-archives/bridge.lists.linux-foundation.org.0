Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 122333E1054
	for <lists.bridge@lfdr.de>; Thu,  5 Aug 2021 10:32:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 403084034D;
	Thu,  5 Aug 2021 08:32:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qdlqfQk3jEPY; Thu,  5 Aug 2021 08:32:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id E970940350;
	Thu,  5 Aug 2021 08:32:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B78A0C0025;
	Thu,  5 Aug 2021 08:32:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 17D85C000E
 for <bridge@lists.linux-foundation.org>; Thu,  5 Aug 2021 08:32:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE90E403E4
 for <bridge@lists.linux-foundation.org>; Thu,  5 Aug 2021 08:31:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A5y230jxT6go for <bridge@lists.linux-foundation.org>;
 Thu,  5 Aug 2021 08:31:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2DEDB4034D
 for <bridge@lists.linux-foundation.org>; Thu,  5 Aug 2021 08:31:58 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id i6so7254380edu.1
 for <bridge@lists.linux-foundation.org>; Thu, 05 Aug 2021 01:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZmHPk02ecFhhLFxeJX7p5e9amiKU0ZRM+eqQQmDy/pE=;
 b=kguRDLeRsmg0kGdl+ZWTy6seL2aHvT9ZWRaF10F/WQW6w78MYeuwO2vWlGwuAsZada
 BKELLtfd7IiQc+DGwQ8JXXC8saSwI8VTE21x7oWzC+43a30Z2qhUOJRV6BfeGeneW030
 +TPgvGfU2tNNwn9L7ut91IIZAt/Em8ZTS/U8sX9AGk2CpHXNclZg0XE4I4e5ys6BP9Iy
 /Hj9AyeJLAw5gzkf2hqz2XmafU9jN2eOtH87ODe184FGyLBDPffxREJMt1MO4Lui7tTf
 ZX+/+2jebvLsIcOCLtyHF55ypFsS0cD3VJ2Ia1D9/ew0a4TBAlO6g2QNi9j/45N2qpM6
 o34w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZmHPk02ecFhhLFxeJX7p5e9amiKU0ZRM+eqQQmDy/pE=;
 b=oPAfPxEJrOolN6yTsWRqt+i50Chtj4ODPvkOy3Awx9ZWhTcAyKpF+LNgaoaH0EizEG
 1nlhzETfA0xN3+w/DTPkdJ3rrnUFwUYyyPN0RW5TyS9kJ0bWky3RQFfFOdykntZUc+Z7
 ojsyv0pJTBaEsC9ww7pXLkFxz8d03+tw3+A+d3MdStIaoG8cCEBeA3nuQtxNHPZMYING
 JtLOH2gHSnhxsWc181PJf3zDT2JTBHP3Tc9w986F0A6JMy88SOSpPkYcVEvyZkelk8mc
 J4h8Kaww0fdQKyzgIAfadBS94kiTa2fOs3QMzfjrw0GhcQoQM/37os0piXaYbi5NFYzt
 ih9Q==
X-Gm-Message-State: AOAM530dgXe4aIbYc8KoPq0CYg6Xlchy15ilRZ/WsGkHssUE62WV+GI9
 daGeB8/THCfGeKqFBJxuqK1mvQ==
X-Google-Smtp-Source: ABdhPJyz5M3ujufHhNf1vUJAjHsCKvV8fK+Q3UjRQVGf/0qcyzy7/iZWa0TVm324nQyAof78TVNcfA==
X-Received: by 2002:a50:ff19:: with SMTP id a25mr4859173edu.311.1628152317234; 
 Thu, 05 Aug 2021 01:31:57 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id bm1sm1471611ejb.38.2021.08.05.01.31.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Aug 2021 01:31:56 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Thu,  5 Aug 2021 11:29:02 +0300
Message-Id: <20210805082903.711396-3-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210805082903.711396-1-razor@blackwall.org>
References: <20210805082903.711396-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 arnd@arndb.de, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 2/3] net: bridge: fix ioctl old_deviceless
	bridge argument
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

Commit ad2f99aedf8f ("net: bridge: move bridge ioctls out of .ndo_do_ioctl")
changed the source of the argument copy in bridge's old_deviceless() from
args[1] (user ptr to device name) to uarg (ptr to ioctl arguments) causing
wrong device name to be used.

Example (broken, bridge exists but is up):
$ brctl delbr bridge
bridge bridge doesn't exist; can't delete it

Example (working):
$ brctl delbr bridge
bridge bridge is still up; can't delete it

Fixes: ad2f99aedf8f ("net: bridge: move bridge ioctls out of .ndo_do_ioctl")
Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_ioctl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/bridge/br_ioctl.c b/net/bridge/br_ioctl.c
index 2f848de3e755..793b0db9d9a3 100644
--- a/net/bridge/br_ioctl.c
+++ b/net/bridge/br_ioctl.c
@@ -351,7 +351,7 @@ static int old_deviceless(struct net *net, void __user *uarg)
 		if (!ns_capable(net->user_ns, CAP_NET_ADMIN))
 			return -EPERM;
 
-		if (copy_from_user(buf, uarg, IFNAMSIZ))
+		if (copy_from_user(buf, (void __user *)args[1], IFNAMSIZ))
 			return -EFAULT;
 
 		buf[IFNAMSIZ-1] = 0;
-- 
2.31.1

