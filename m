Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E763D106C
	for <lists.bridge@lfdr.de>; Wed, 21 Jul 2021 16:02:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CEBFD81C19;
	Wed, 21 Jul 2021 14:02:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U1nFC6EfiNrQ; Wed, 21 Jul 2021 14:02:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 7704981CDB;
	Wed, 21 Jul 2021 14:02:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1B339C000E;
	Wed, 21 Jul 2021 14:02:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7BA33C000E
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jul 2021 14:02:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 55482606F6
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jul 2021 14:02:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u0rz8VMBl6PD for <bridge@lists.linux-foundation.org>;
 Wed, 21 Jul 2021 14:02:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 77EAF6067C
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jul 2021 14:02:38 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id ee25so2531962edb.5
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jul 2021 07:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=z3HxhlcjFVfeTyolNsFE13TofseeVib/v3WCt+5AZBY=;
 b=YIl2GYpXvGrgpJUodUsU5XJOMKa8DPllLYd4a12ymeCI1rkodJiWdKD/6HonJF5ian
 unwbtoayynN2Gn0gTy6miC9gtThNlZbT4sT0V8DCZ/G8YB2s08vT/wfj4BuwwILLrrz5
 dqy27jZcbeoY+88NzzaIfhZrJNzBNZyfZA3+l5cIOO4hfoWKRXtFmJov8OV3IrvjeGNO
 lEKx3nuqH0qSLk66wkfmLg+96wGqyb02y8K8S6g62oOUjZf8DvDh1JVAQ9NeGP93QooJ
 npbtWJIqWekdJ9zW8Rl+IRWQPqvgozJcHXSMPn5RecGX0kWuH0+EbwDKAwYkRkPI1Sg5
 XRUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=z3HxhlcjFVfeTyolNsFE13TofseeVib/v3WCt+5AZBY=;
 b=SDZ4H4zNmiYtfu4zkBlG9fo0TH0StI29kueupX8Cd7gL3FL0O2cZFmObLaeQ854JQx
 pk9iWyq33lXzATG0Ajx7el1EyocgL/QVUmdkV0+vNM8ITdXo5c1vd1sYWW7YFa8NwwGs
 /wrjIMXdIr4+drI5x0vrdmDRcMCHq4ncpudMIFl80taSs+qVLm/eDcNksGz+ZmK662xF
 LElXi3AkcZ2MKkl9ient6UfGzQ2ltXlCvIrbUfcBLo4bp9M/VfcUxsK+AHIZgrcma2gU
 zFpAvMzf+rnfdpPP1GzE2f0dODmSS49i5kQd1ziHsHE3uQ0BH8xwhMD8dVNZslp4ATEm
 g13Q==
X-Gm-Message-State: AOAM533bIe3evheXD4aegVLQnRhclwlFLTGzF9XRSh4CIHOv36Ch9Fi1
 brVXxa4DmtCpk9YGRls5+5iMpA==
X-Google-Smtp-Source: ABdhPJzvKxIJl7J4QCQSCFGFErBQW1E9V4zYkfHYD/mFJ9fBqEkcIvx4v1IHsLoU4mkT3RP5bKIdOQ==
X-Received: by 2002:aa7:db11:: with SMTP id t17mr47664722eds.297.1626876156414; 
 Wed, 21 Jul 2021 07:02:36 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id f15sm8362925ejc.61.2021.07.21.07.02.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jul 2021 07:02:35 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Wed, 21 Jul 2021 17:01:25 +0300
Message-Id: <20210721140127.773194-1-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 0/2] net: bridge: multicast: add mdb and
	host context support
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
This is a minor context improvement which chooses the proper multicast
context when adding user mdb entries or host-joined entries (pointing to
the bridge device). Patch 01 adds a helper which chooses the proper
context when user-space is adding an mdb entry, note that it requires
the vlan to be configured on at least 1 device (port or bridge) so it
would have a multicast context. Patch 02 changes br_multicast_host_join
to take a bridge multicast context parameter which is passed down from
the respective functions, currently it is used for the timer config
value only. This set is in preparation for adding all multicast options
for vlans.

Thanks,
 Nik


Nikolay Aleksandrov (2):
  net: bridge: multicast: add mdb context support
  net: bridge: multicast: add context support for host-joined groups

 net/bridge/br_mdb.c       | 45 +++++++++++++++++++++++++++++++++++----
 net/bridge/br_multicast.c |  8 +++----
 net/bridge/br_private.h   |  3 ++-
 3 files changed, 47 insertions(+), 9 deletions(-)

-- 
2.31.1

