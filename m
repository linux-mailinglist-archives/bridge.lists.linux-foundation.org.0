Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 782BD1190D6
	for <lists.bridge@lfdr.de>; Tue, 10 Dec 2019 20:39:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1A2A583102;
	Tue, 10 Dec 2019 19:39:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I3zn3nITti-t; Tue, 10 Dec 2019 19:39:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id D6702855E1;
	Tue, 10 Dec 2019 19:39:47 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EFF3AC1D88;
	Tue, 10 Dec 2019 19:39:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 27E95C0881
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 19:39:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 237DA85F7D
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 19:39:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pjUMfda8qKKZ for <bridge@lists.linux-foundation.org>;
 Tue, 10 Dec 2019 19:39:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CBFFF85F54
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 19:39:34 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id t17so3887931qtr.7
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 11:39:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:message-id:from:to:cc:subject:in-reply-to:references
 :mime-version:content-disposition:content-transfer-encoding;
 bh=lhiNdVC12nCt8MlphHeNeXsppJHwJXSdVTCOLb3ahXE=;
 b=mVxM7iSVV/fJa7CCTSh9gS1EjUUhQtROEIUQEHdzVn1zNAU3PG0vNxRzPjSWofjHgZ
 ugWkGOdN4LCE8DKbwHJL0DJt24YFP4bxZXjgApONHGBb5y8IJmVwx574VvhcVHf2sBlL
 HB60b42pfla8/r1sKziGjeGJv5oce1uCdqEij3r6hN+uK5UqDIBMLwyb/wvCHsGNo5l5
 RrS+sVIJUmgSJPgnU3BoP6UOEiMRvQn3RnrYdoNYsK6/WJ6De1qrREgshWFvxG3WCsCW
 cmov1+bx9aKLaloZm+BQP31YIJOJr4vX+soePPXfHPgO8GdjDniAPsZZwoDf1VoTMcyv
 GexA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:from:to:cc:subject:in-reply-to
 :references:mime-version:content-disposition
 :content-transfer-encoding;
 bh=lhiNdVC12nCt8MlphHeNeXsppJHwJXSdVTCOLb3ahXE=;
 b=PPFAvhreKhaGttRuUaQStLtnjKq0AWWeAXYMkAbIyms9vAOmMoijwYKzl9hsSGjAsT
 DOkIutK6tguYRYEAwAKBja7UaNIndG+ULB1grXMmRdjip/82bDe4g3tjgGqemBKfxkHG
 6zjiZ/Te1fpja8mW0wc//pOHod8PuJqNz4q2ci15uy46Lzw2B0Tj/e7z4KjMWMyjv8Uq
 +mgPbiKyKV3PX0zhFQo/ZkEFpKcv5IWbhJGLBqIyAXE/EnVeefFo9pE5p9Nc9UyGKk9X
 f2V6VClYwxrupmNiyvyWVFClPzcByYypB20TNqoD6eLmZfW1QdtXqenTweu8QVky8qd6
 LXAQ==
X-Gm-Message-State: APjAAAVp0fwoEFabYLNRRd3NNNa9y8VDUv5ByMK91W5cvFusLzSkMIH0
 cNRn9yXmVzd9iIChziBzr0M=
X-Google-Smtp-Source: APXvYqwU1xxAUS2fWCQNFh42v/nXu9DqiiWlsyq9lJNmp5wvKyArMv0ENCgUYFRU+5XyEjTRYnAs2w==
X-Received: by 2002:ac8:664a:: with SMTP id j10mr31595333qtp.70.1576006773764; 
 Tue, 10 Dec 2019 11:39:33 -0800 (PST)
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca.
 [184.163.105.249])
 by smtp.gmail.com with ESMTPSA id o7sm1211842qkd.119.2019.12.10.11.39.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 11:39:32 -0800 (PST)
Date: Tue, 10 Dec 2019 14:39:31 -0500
Message-ID: <20191210143931.GF1344570@t480s.localdomain>
From: Vivien Didelot <vivien.didelot@gmail.com>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
In-Reply-To: <a3b8e24d-5152-7243-545f-8a3e5fbaa53a@cumulusnetworks.com>
References: <20191209230522.1255467-1-vivien.didelot@gmail.com>
 <a3b8e24d-5152-7243-545f-8a3e5fbaa53a@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Cc: netdev@vger.kernel.org, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next] net: bridge: add STP xstats
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

Hi Nikolay,

On Tue, 10 Dec 2019 09:49:59 +0200, Nikolay Aleksandrov <nikolay@cumulusnetworks.com> wrote:

> Why did you send the bridge patch again ? Does it have any changes ?

The second iproute2 patch does not include the include guards update, but
I kept the bridge_stp_stats structure and the BRIDGE_XSTATS_STP definition
otherwise iproute2 wouldn't compile.

> 
> Why do you need percpu ? All of these seem to be incremented with the
> bridge lock held. A few more comments below.

All other xstats are incremented percpu, I simply followed the pattern.

> >  	struct net_bridge_port *p
> >  		= container_of(kobj, struct net_bridge_port, kobj);
> > +	free_percpu(p->stp_stats);
> 
> Please leave a new line between local var declaration and the code. I know
> it was missing, but you can add it now. :)

OK.

> > +	if (p) {
> > +		struct bridge_stp_xstats xstats;
> 
> Please rename the local var here, using just xstats is misleading.
> Maybe stp_xstats ?

This isn't misleading to me since its scope is limited to the current block
and not the entire function. The block above dumping the VLAN xstats is
using a local "struct br_vlan_stats stats" variable for example.

> 
> > +
> > +		br_stp_get_xstats(p, &xstats);
> > +
> > +		if (nla_put(skb, BRIDGE_XSTATS_STP, sizeof(xstats), &xstats))
> > +			goto nla_put_failure;
> 
> Could you please follow how mcast xstats are dumped and do something similar ?
> It'd be nice to have similar code to audit.

Sure. I would also love to have easily auditable code in net/bridge. For
the bridge STP xstats I followed the VLAN xstats code above, which does:

    if (nla_put(skb, BRIDGE_XSTATS_VLAN, sizeof(vxi), &vxi))
        goto nla_put_failure;

But I can change the STP xstats code to the following:

    if (p) {
        nla = nla_reserve_64bit(skb, BRIDGE_XSTATS_STP,
                                sizeof(struct bridge_stp_xstats),
                                BRIDGE_XSTATS_PAD);
        if (!nla)
            goto nla_put_failure;

        br_stp_get_xstats(p, nla_data(nla));
    }

Would that be preferred?


Thanks,

	Vivien
