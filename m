Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA154FACA7
	for <lists.bridge@lfdr.de>; Sun, 10 Apr 2022 10:14:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 483BC60BDE;
	Sun, 10 Apr 2022 08:14:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jxhwRErxvSsb; Sun, 10 Apr 2022 08:14:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id A437C60BE5;
	Sun, 10 Apr 2022 08:14:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4ECE7C0088;
	Sun, 10 Apr 2022 08:14:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4AD1AC0012
 for <bridge@lists.linux-foundation.org>; Tue,  5 Apr 2022 23:52:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 227CF41624
 for <bridge@lists.linux-foundation.org>; Tue,  5 Apr 2022 23:52:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=arista.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZiMZY-WVz04j for <bridge@lists.linux-foundation.org>;
 Tue,  5 Apr 2022 23:52:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x361.google.com (mail-wm1-x361.google.com
 [IPv6:2a00:1450:4864:20::361])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 72FF24161E
 for <bridge@lists.linux-foundation.org>; Tue,  5 Apr 2022 23:52:03 +0000 (UTC)
Received: by mail-wm1-x361.google.com with SMTP id
 i6-20020a1c3b06000000b0038e710da2dcso2607597wma.1
 for <bridge@lists.linux-foundation.org>; Tue, 05 Apr 2022 16:52:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:dkim-signature:from:to:cc:subject:date
 :message-id:content-transfer-encoding;
 bh=tjab0l+xfYR0aZEj5soCABbrSjfcWfiSiNw5bb6ADcc=;
 b=jBsthyfCxTOOMmcgFEaZgz4rJv73phgqeQelc8Lo4ysrYcPZ1/fUYBuTC1hQ6eC0aH
 xSzwdAri/FLa1WPRnF5YAVhiizJ/U1fYx8dWMLZil89pwGkienrqWhrVbHoq2nZGS3WN
 AlB13ZrXXitlWUFuBH/cMEI6UiHhVNMllTC0hjGDQDruLhjQ892SKCevNFiV7B6jrjTj
 Q6KWry8hC0f3RoVFvHuL8rNldUPY6mxTTJickhD+SMHHZQjJQm5XGb55w32tDBPBWoQQ
 H6d/O6tNsfCHDiyCwp4WG6egRS9MZHLDxKAPN7XHdBx96FGGR3zTHqD5pDskVy26yc/n
 2hmQ==
X-Gm-Message-State: AOAM532AvCFd1QB+EH6/Vkvhb8xGqH+aThe52CFut+7qxfjouZId09gW
 d75FzrScqIrqeGyMLg21OhWVkU4Jaw2TKF6uJVJ29UNDhcvF
X-Google-Smtp-Source: ABdhPJzjXl9lYXef6+e9Ggc2Y85pcIUJDGm5uhvKfava0TB3KoHRk4M3HKy4QO+yz963G18cVxs/3dEmP3Ap
X-Received: by 2002:a7b:c381:0:b0:37b:e01f:c1c0 with SMTP id
 s1-20020a7bc381000000b0037be01fc1c0mr5174267wmj.98.1649202721448; 
 Tue, 05 Apr 2022 16:52:01 -0700 (PDT)
Received: from smtp.aristanetworks.com (smtp.aristanetworks.com. [52.0.43.43])
 by smtp-relay.gmail.com with ESMTPS id
 f13-20020a05600c4e8d00b0038c994092fbsm439961wmq.0.2022.04.05.16.52.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 05 Apr 2022 16:52:01 -0700 (PDT)
X-Relaying-Domain: arista.com
Received: from chmeee (unknown [10.95.70.41])
 by smtp.aristanetworks.com (Postfix) with ESMTPS id 28C603002D04;
 Tue,  5 Apr 2022 16:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arista.com;
 s=Arista-A; t=1649202720;
 bh=tjab0l+xfYR0aZEj5soCABbrSjfcWfiSiNw5bb6ADcc=;
 h=From:To:Cc:Subject:Date:From;
 b=woP9fF3qZzunKXrRcPgDSyac21eIvuWWbeTXc12/yEUdySijANk8sRKdptJl6l5cV
 iLcWQenoSPX2Ua0bGFCFKIClIsbbT65yMydGSEo0ET6l5uKpuHqFK61RohyHNSI0Kq
 N+MjUi8fnrUaLZTjxB92POD5qaaEiDgFmSq4TIzgFSShKcjV2p+U/2HajpkGw7oVwX
 Xbnd+gf0pkHohKyV6TZIsm4APNq+F+u8GWZm4iBIUbO2G1UxNT0QdN6rOWgHAL3CD+
 qbi6ht0AIfArtaytZm0+cEir6F5+2bHfzNrmyt+2AcBxSrm/nEmbNJqmeleAy7LBGo
 xAWf0YU6uw5RQ==
Received: from kevmitch by chmeee with local (Exim 4.95)
 (envelope-from <kevmitch@chmeee>) id 1nbsxp-00188V-Sp;
 Tue, 05 Apr 2022 16:51:57 -0700
To: 
Date: Tue,  5 Apr 2022 16:51:15 -0700
Message-Id: <20220405235117.269511-1-kevmitch@arista.com>
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Sun, 10 Apr 2022 08:14:13 +0000
Cc: kevmitch@arista.com, Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 netdev@vger.kernel.org, gal@nvidia.com, bridge@lists.linux-foundation.org,
 Florian Westphal <fw@strlen.de>, linux-kernel@vger.kernel.org,
 Jozsef Kadlecsik <kadlec@netfilter.org>, coreteam@netfilter.org,
 netfilter-devel@vger.kernel.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 "David S. Miller" <davem@davemloft.net>,
 Pablo Neira Ayuso <pablo@netfilter.org>
Subject: [Bridge] [PATCH v2 0/1] UDP traceroute packets with no checksum
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
From: Kevin Mitchell via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Kevin Mitchell <kevmitch@arista.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

This is v2 of https://lkml.org/lkml/2022/1/14/1060

That patch was discovered to cause problems with UDP tunnels as
described here:

https://lore.kernel.org/netdev/7eed8111-42d7-63e1-d289-346a596fc933@nvidia.com/

This version addresses the issue by instead explicitly handling zero UDP
checksum in the nf_reject_verify_csum() helper function.

Unlike the previous patch, this one only allows zero UDP checksum in
IPv4. I discovered that the non-netfilter IPv6 path would indeed drop
zero UDP checksum packets, so it's probably best to remain consistent.

-- 
2.35.1

