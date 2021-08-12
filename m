Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E566C3E9E39
	for <lists.bridge@lfdr.de>; Thu, 12 Aug 2021 08:04:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 382D981CBA;
	Thu, 12 Aug 2021 06:04:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tVLbjqA-kuOT; Thu, 12 Aug 2021 06:04:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 62A4D81AAC;
	Thu, 12 Aug 2021 06:04:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1B2B1C0022;
	Thu, 12 Aug 2021 06:04:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D6A0EC000E
 for <bridge@lists.linux-foundation.org>; Thu, 12 Aug 2021 06:04:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BFEFC404FA
 for <bridge@lists.linux-foundation.org>; Thu, 12 Aug 2021 06:04:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H1fxym1umg46 for <bridge@lists.linux-foundation.org>;
 Thu, 12 Aug 2021 06:04:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E2490404F6
 for <bridge@lists.linux-foundation.org>; Thu, 12 Aug 2021 06:04:19 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id
 u21-20020a17090a8915b02901782c36f543so13515344pjn.4
 for <bridge@lists.linux-foundation.org>; Wed, 11 Aug 2021 23:04:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-disposition:content-transfer-encoding;
 bh=nKkNOKnR0BjeJ53ALM7gQ03JCstACfSRC5kNtfzT4yk=;
 b=P0XbE8UYynS6GdhVuBw2y3O0dZ+pvc02m/UylndyPNK85wfDC6Gq59QMnx+hMXD4nI
 yCmncJO5qEPDBI0Y9J84bgG6LxAOOx+WTVY8OLTgn1KYIyLATAWYU2FuapnCogqrjuO/
 rBckONFW6CLiyURRvVq4zBgjBcfyOA06tcb0Lrk4f4VPPd3ZK7QMsVYUi+F+P9OJAAoX
 wXH4q72e3n7sZQqX5TPQKpGhmQWalzjvSnKs+DjrTRnKrmjLtdQtnINr85PSLhnsvKzC
 IbirWZdD7XapV5M0ZEMmq36msmXy9bwiBNuChoaDNSmxmHCj0hqb3Ch8xkfvo/tM+c+n
 ZqaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-disposition
 :content-transfer-encoding;
 bh=nKkNOKnR0BjeJ53ALM7gQ03JCstACfSRC5kNtfzT4yk=;
 b=t2LonW1ff20qE/8wahyDs1CAN6EDL6y/u9WIVC+Wmbi5Ge/xVnnGPF/7vcGz5L/how
 AsNRXBt6LAybsKFLz7B70WWlr84kwmjENhmLbbFu+ePpacfgS1f6vKTVpewWKUWma59X
 TDYTHNk/2wxNrSJG/jlr2bgR0LBxIiJt0z3uIyPlT+IGJU3QB7JVNx9k98AxXvMiyrUa
 Y+zw5dPHSmhKo7uSnuBWdNF5iowZziVg4mU0Oajylt49sepA5G/MMMEt7VhBWdETAxVS
 mqVkyJM1u4yddoXdiNOYp1d3OdEr2Awgxl+/pUT+3Fmqk7vK1s6c4RiE2jVc58CUlRog
 nwIA==
X-Gm-Message-State: AOAM531/7T8L7+anWOCXYIvnwwROnZHb6lvFItjr/0ILUzw97HLpaUuz
 KWt6zHvH7rXqkZ2kodKIxW4=
X-Google-Smtp-Source: ABdhPJzFYLWTNVJ+SHnUGsH+wt/Q9EbQiiyLesQa6R68Ta19VJ20+YhgGgRwnBotLuVURb0jPWYH8w==
X-Received: by 2002:a65:641a:: with SMTP id a26mr2428982pgv.340.1628748259363; 
 Wed, 11 Aug 2021 23:04:19 -0700 (PDT)
Received: from haswell-ubuntu20.lan ([138.197.212.246])
 by smtp.gmail.com with ESMTPSA id p21sm1666469pfo.8.2021.08.11.23.04.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Aug 2021 23:04:18 -0700 (PDT)
From: DENG Qingfang <dqfext@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>
Date: Thu, 12 Aug 2021 14:04:10 +0800
Message-Id: <20210812060410.1848228-1-dqfext@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210811215833.yst5tzgfvih2q4y2@skbuf>
References: <20210811135247.1703496-1-dqfext@gmail.com>
 <YRRDcGWaWHgBkNhQ@shredder> <20210811214506.4pf5t3wgabs5blqj@skbuf>
 <YRRGsL60WeDGQOnv@shredder> <20210811215833.yst5tzgfvih2q4y2@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "open list:ETHERNET BRIDGE" <netdev@vger.kernel.org>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 open list <linux-kernel@vger.kernel.org>, Ido Schimmel <idosch@idosch.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next] net: bridge: switchdev: allow port
	isolation to be offloaded
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

On Thu, Aug 12, 2021 at 12:58:33AM +0300, Vladimir Oltean wrote:
> On Thu, Aug 12, 2021 at 12:52:48AM +0300, Ido Schimmel wrote:
> > 
> > If the purpose is correctness, then this is not the only flag that was
> > missed. BR_HAIRPIN_MODE is also relevant for the data path, for example.
> 
> I never wanted to suggest that I'm giving a comprehensive answer, I just
> answered Qingfang's punctual question here:
> https://lore.kernel.org/netdev/CALW65jbotyW0MSOd-bd1TH_mkiBWhhRCQ29jgn+d12rXdj2pZA@mail.gmail.com/
> 
> Tobias also pointed out the same issue about BR_MULTICAST_TO_UNICAST in
> conjunction with tx_fwd_offload (although the same is probably true even
> without it):
> https://patchwork.kernel.org/project/netdevbpf/cover/20210426170411.1789186-1-tobias@waldekranz.com/
> 
> > Anyway, the commit message needs to be reworded to reflect the true
> > purpose of the patch.
> 
> Agree, and potentially extended with all the bridge port flags which are
> broken without switchdev driver intervention.

So, what else flags should be added to BR_PORT_FLAGS_HW_OFFLOAD?
