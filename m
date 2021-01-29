Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD18308894
	for <lists.bridge@lfdr.de>; Fri, 29 Jan 2021 12:51:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C16EF232D2;
	Fri, 29 Jan 2021 11:51:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m7e6066qittq; Fri, 29 Jan 2021 11:51:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 21C6D27256;
	Fri, 29 Jan 2021 11:51:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E5CD8C08A1;
	Fri, 29 Jan 2021 11:51:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 580CEC08A1
 for <bridge@lists.linux-foundation.org>; Fri, 29 Jan 2021 11:51:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3D6B686A8F
 for <bridge@lists.linux-foundation.org>; Fri, 29 Jan 2021 11:51:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I9vGa4JP319R for <bridge@lists.linux-foundation.org>;
 Fri, 29 Jan 2021 11:51:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
 [209.85.208.44])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E7482869D9
 for <bridge@lists.linux-foundation.org>; Fri, 29 Jan 2021 11:51:52 +0000 (UTC)
Received: by mail-ed1-f44.google.com with SMTP id z22so10225032edb.9
 for <bridge@lists.linux-foundation.org>; Fri, 29 Jan 2021 03:51:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mZq+Sk8sW5jspwNyA+rTh8cMrmM4ztbBKovfMaPUGUg=;
 b=KXA6npIPqfUwNZcrMvATfLw6O+OFtQCio8W/gFenkxYbF9I1oRLfS1zS9Io5qWwFn1
 fgUEEtRhtvE1czajEsGmNJ9G4+xWwB9eTtwl6Ca9XfEHZBhttJb3CGdTXVXk8A1jEyVY
 U/nV8j3q3cgq+tdSM+47ru+pp2elI6gLOJrh7zR37SKAq4+krFS1kHBVKnBxnBVgbTWK
 imnDplsyWHjDC/KOqlmL5/okaxbync87Fmm08XUw+spnfnyVS18WeTACSTXy7G+VymvD
 DaSBLskbUjbVEyuGkbBzeKAJSiJffJcoXDWBkWiG9kbH3ebNd7LzUNjESCZCPQeUWAcy
 SUrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mZq+Sk8sW5jspwNyA+rTh8cMrmM4ztbBKovfMaPUGUg=;
 b=numVUvZxo4fmUWd1GedL10vqaNweHI+AEbDjWoFP3SuWDXe834aXCgLNrll7Ms63n8
 ybt1bHyu7KWe+Ajr5DALcGOY8mP5mIj6sB63oxtNjV2aL7/7JZovTsQmErRYbxEd/Udr
 d0qDIliQr+ZeZtOPk9LAVxeTe8+BhVotJ0VgtsC7ge8DzyDiGsJ5hu44rRSJO9f/7OCy
 eNeg0uN8lMzUGLXi1EGiW0/5OZzcPrGOsBGeHMzoimUms+d4NhbLgSjM5ToNi+bkjyxN
 UxDhD1vhGpREXHFLQpP1T6bDxmHCAPTWk8eixWIQEoTyEwI4e67eiAqFuxhz0z5owsrQ
 XOVA==
X-Gm-Message-State: AOAM533UluE5Aoc3D/M50ThSP6zGbjoApinCYz3JDTxBL1dH7O1GwBQj
 vU+Hl9Fgu4h0o3P8slN/xuSoOA==
X-Google-Smtp-Source: ABdhPJxqlyDjZ+ZJi09JP3lxG0/szXDyVks5GToJTm5dtVS8PPwvQjD2h1S9cenAyI5gLLcyON48Yw==
X-Received: by 2002:aa7:c719:: with SMTP id i25mr4634144edq.197.1611921110972; 
 Fri, 29 Jan 2021 03:51:50 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id u23sm4450130edt.87.2021.01.29.03.51.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Jan 2021 03:51:50 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Fri, 29 Jan 2021 13:51:40 +0200
Message-Id: <20210129115142.188455-1-razor@blackwall.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 0/2] net: bridge: drop hosts limit sysfs
	and add a comment
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
As recently discussed[1] we should stop extending the bridge sysfs
support for new options and move to using netlink only, so patch 01
drops the recently added hosts limit sysfs support which is still in
net-next only and patch 02 adds comments in br_sysfs_br/if.c to warn
against adding new sysfs options.

Thanks,
 Nik

Nikolay Aleksandrov (2):
  net: bridge: mcast: drop hosts limit sysfs support
  net: bridge: add warning comments to avoid extending sysfs

 net/bridge/br_sysfs_br.c |  4 ++++
 net/bridge/br_sysfs_if.c | 30 ++++--------------------------
 2 files changed, 8 insertions(+), 26 deletions(-)

-- 
2.29.2

