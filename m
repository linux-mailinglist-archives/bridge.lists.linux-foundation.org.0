Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC5B42E91F
	for <lists.bridge@lfdr.de>; Fri, 15 Oct 2021 08:37:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E45D560765;
	Fri, 15 Oct 2021 06:37:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QTubinrJ-o1z; Fri, 15 Oct 2021 06:37:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id A69916073A;
	Fri, 15 Oct 2021 06:37:09 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6707BC0022;
	Fri, 15 Oct 2021 06:37:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3AFF4C000D
 for <bridge@lists.linux-foundation.org>; Fri, 15 Oct 2021 06:37:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1D8814039B
 for <bridge@lists.linux-foundation.org>; Fri, 15 Oct 2021 06:37:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DjE4z8q55f78 for <bridge@lists.linux-foundation.org>;
 Fri, 15 Oct 2021 06:37:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1DA6940395
 for <bridge@lists.linux-foundation.org>; Fri, 15 Oct 2021 06:37:06 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id n11so5792923plf.4
 for <bridge@lists.linux-foundation.org>; Thu, 14 Oct 2021 23:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=TusiGY9Id/oD51908hOFhgKlKHw5g+jeF6Iv+dmRSBk=;
 b=lH9JGXfqRpprxbxWiOgi7OJko8JZ8+8+6XeISMXirHJVIR1lKakRAJjNZHlW+Ib8Qg
 R06emWD2DUsOGIITYlNDoWmJBlsSUAW3pSxbFkRWd5Ja8GLQLy3s485DZdGV8tZdaSGl
 SzT8Lo137Pgaft698OjxGWfqcTP5eYLS6kXOLUsyOy/wZydy28IyYoUBapOX627T8FDO
 75420c5x7tEC7mcO93KdjdGD2emIMQhILzb1DbhNX59cwHU9+vMMQsVHANGoa4Bl/EPa
 8kigD20bdOqXz7zPbaLzzVmFGNJSXRpOY8myukx8UDna1MFZZFf8gt6dcM4Mo2yBJ8Rj
 4Uvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TusiGY9Id/oD51908hOFhgKlKHw5g+jeF6Iv+dmRSBk=;
 b=aBNpTt8tfJSKdT7fVQGWxj4XDQD8Rwp950hmx1QpW714Nfp/RwzkhZV0KQTWZcUeDk
 olRdGIqErNkD0i1r+zTu2pPBgJuSIH3IMdjOouOBzaeH5pSfGkPwsAJK+MJ9oXCnzm4C
 N/NlQ3twLnrtV6gWBAWB5nI/JFwsng93XIEL3+08VezkyZnJRsMOaa8+1DFfLUYgFf6Z
 62jFHN/h11yqzObFRsTVWA1rU3ccZJXlc33pHW+6cFlnwHZSFSfx5kRYG83jq58azcVB
 PyADv/1TLhVx/L2vXvyL4i0De+BBNFRbdmnneKJrU+lMsz8d3yYsELlJ3sX94rjMPA38
 XCWg==
X-Gm-Message-State: AOAM531fU6zK6dtL91SvFJSAoGnO7dKXeHsHR39fg7D4B0MJDl7hoLUl
 ND+L0bC9sVs4FlDhkgBP/G4=
X-Google-Smtp-Source: ABdhPJxoo/72MfW/Ipk59ge8/0C3/EX3KvsLs8fmgcTPXQMutahjP+xjfaVAFsKx6lc0uOzC7S3YeA==
X-Received: by 2002:a17:90a:8912:: with SMTP id
 u18mr11213252pjn.69.1634279825506; 
 Thu, 14 Oct 2021 23:37:05 -0700 (PDT)
Received: from Laptop-X1 ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id 14sm4095129pfu.29.2021.10.14.23.37.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Oct 2021 23:37:04 -0700 (PDT)
Date: Fri, 15 Oct 2021 14:36:59 +0800
From: Hangbin Liu <liuhangbin@gmail.com>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <YWkhi7iABEKygKaL@Laptop-X1>
References: <20200907095619.11216-1-nikolay@cumulusnetworks.com>
 <20200907095619.11216-11-nikolay@cumulusnetworks.com>
 <YWjsyk/Dzg2/zVbw@Laptop-X1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YWjsyk/Dzg2/zVbw@Laptop-X1>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 davem@davemloft.net, kuba@kernel.org, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next v4 10/15] net: bridge: mcast: support
 for IGMPv3/MLDv2 ALLOW_NEW_SOURCES report
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

On Fri, Oct 15, 2021 at 10:52:00AM +0800, Hangbin Liu wrote:
> > -	mod_timer(&p->timer, now + br->multicast_membership_interval);
> > +	if (igmpv2_mldv1)
> > +		mod_timer(&p->timer, now + br->multicast_membership_interval);
> 
> Hi Nikolay,
> 
> Our engineer found that the multicast_membership_interval will not work with
> IGMPv3. Is it intend as you said "IGMPv3/MLDv2 handling is not yet
> implemented" ?

Ah, I saw in br_multicast_group_expired() it wait for mp->ports be freed
before delete the mdb entry.

And in br_multicast_port_group_expired() it wait for src entry freed first.

But when mod group src timer, we use
__grp_src_mod_timer(ent, now + br_multicast_gmi(brmctx));

instead of user configured multicast_membership_interval. I think we should
fix it. WDYT?

Thanks
Hangbin
