Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3544A3E525E
	for <lists.bridge@lfdr.de>; Tue, 10 Aug 2021 06:41:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8DC924020B;
	Tue, 10 Aug 2021 04:41:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wyKpMgDrWIOT; Tue, 10 Aug 2021 04:41:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 58AE0401FC;
	Tue, 10 Aug 2021 04:41:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1226AC001F;
	Tue, 10 Aug 2021 04:41:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 01287C000E
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 04:41:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DD83640386
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 04:41:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H8L68TTlN0z0 for <bridge@lists.linux-foundation.org>;
 Tue, 10 Aug 2021 04:41:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C611C4037D
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 04:41:02 +0000 (UTC)
Received: by mail-lf1-x130.google.com with SMTP id x8so38899804lfe.3
 for <bridge@lists.linux-foundation.org>; Mon, 09 Aug 2021 21:41:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=efM2azY1GAvdk/UvUuz5kJMAAN4U4q/U85YcIAgQ+ME=;
 b=lMw7+lN7Usqhku94n2XtHEsY/VysmPxQvlS/cwl7nBd3+UIkFC0TNiVyqq5g3ExNnv
 i7CGs6aKJboxrCIDWGYsB8bYdn2x7gcwGajHuAy4gzm4yFpwVMqh/QTcAXvhSgUL1F7M
 dMSjDrYuW7Z5e8W2Ai6Su1zoPp4FWLWAKtwLGq4x92fMNExfFh6hnCDJ4LofqUnJbl6G
 HIdYM4GjzPi4SAXU6UrF9LNXR1JY1ifTxjD6rm2vIeybNwS+GZ0AFhkBlVjICZx3pStU
 l4ao4yRaHQhjDfI801J3dLy4oEhDTLNkEfxauC1kBkbO+WCI0EZ0YeKzCt8WwKD5yZ7y
 T+OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=efM2azY1GAvdk/UvUuz5kJMAAN4U4q/U85YcIAgQ+ME=;
 b=SxRRuX2DeL2ywQInyePZ3q7swGhfR55a6Iv5m3vq/DUQppASSuovoOyJhQGlHBCYG4
 08pCvF7AOQztI59VZ0PvpD+Jr0hvbZUdt9T6Wa5oC/jjr64PghD3xwJXICZHIKOwD8bs
 pSSViMZq/Ul1uZfYnO7kX6PBnWJli4sZShVnFiuQxZTQcRI6ppvWqdyboAWq47RvG2A3
 t5DFAcJ+MGiIqc3bbDmGRm6APdS1ZCm56ou83p8FAdZb/p1VcU3P0e3mg6XmeRGpGO9o
 uofJg1lrEyn/TSsckaYSHi1Hsr3LJW1Gts8PHXcHq1+2ir9lnV/v+J1qBMmF2JLmoDgM
 g0sQ==
X-Gm-Message-State: AOAM532Nm4Ys98Z82EuiBg6D0M/+RN/aSkygwWPJ4FL/9S9tDsJfhv0p
 ZcAo+jxZ2z0gBNvq8FWKl6BpmjFwTHW4lYRVbSw=
X-Google-Smtp-Source: ABdhPJyH8Vr4DzBoD8z26laVLCMFLBVErlR+3N/+YJIuvQaPmAiEfFwve6ySAZQCVhwJFcfylVmgjOz5XWtiu31Zbu8=
X-Received: by 2002:a05:6512:33c4:: with SMTP id
 d4mr20918769lfg.618.1628570460592; 
 Mon, 09 Aug 2021 21:41:00 -0700 (PDT)
MIME-Version: 1.0
From: DENG Qingfang <dqfext@gmail.com>
Date: Tue, 10 Aug 2021 12:40:49 +0800
Message-ID: <CALW65jbotyW0MSOd-bd1TH_mkiBWhhRCQ29jgn+d12rXdj2pZA@mail.gmail.com>
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>, 
 David Miller <davem@davemloft.net>, Andrew Lunn <andrew@lunn.ch>, 
 Florian Fainelli <f.fainelli@gmail.com>, Jakub Kicinski <kuba@kernel.org>, 
 bridge@lists.linux-foundation.org, netdev <netdev@vger.kernel.org>, 
 Vivien Didelot <vivien.didelot@gmail.com>, Vladimir Oltean <olteanv@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Bridge] Bridge port isolation offload
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

Hi,

Bridge port isolation flag (BR_ISOLATED) was added in commit
7d850abd5f4e. But switchdev does not offload it currently.
It should be easy to implement in drivers, just like bridge offload
but prevent isolated ports to communicate with each other.

Your thoughts?

Regards,
  Qingfang
