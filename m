Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B5ADC4DA585
	for <lists.bridge@lfdr.de>; Tue, 15 Mar 2022 23:42:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ECB0284276;
	Tue, 15 Mar 2022 22:42:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B2zFvQDiy34P; Tue, 15 Mar 2022 22:42:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 8678484275;
	Tue, 15 Mar 2022 22:42:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4B388C0033;
	Tue, 15 Mar 2022 22:42:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EC606C0012
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 22:42:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D253E40546
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 22:42:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SYZOTppped5g for <bridge@lists.linux-foundation.org>;
 Tue, 15 Mar 2022 22:42:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BF4E24053E
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 22:42:09 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id b24so615314edu.10
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 15:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=QwK4SCTHESWH9opGqBpp4sqUaushZIwW8QXUMdBftVo=;
 b=ESShF7zVcCseeQJQL5/QUswiIDZA0RkSF/Mz/5ZlrdvpAPx3bb9w3stSHYXfSfz4Wb
 KKfwZRCzYv341ZNom9QXqC3iWs/ISy2yeKhyjxgxEDEUuTBnbAeu8wObNKLlOnwlA8V1
 JYjauXCU7JAl1mVlW5xLg2n55+qoj0W/NGI1icJKpmp598LMGBZQS5bGfU5pdX4UWQkc
 G+gb1tV8zSFItGNLH0QxEdseVK8fGj1g79QBRT9Px5KG/+lyGLezcd2QshqV0RlEe34g
 5kCWpPeZtVUNhlObG5x0SelyY4WcZfznWK0C7lJr5BRrorRDkjJgfDaAfoDjnscWhBtm
 fkew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QwK4SCTHESWH9opGqBpp4sqUaushZIwW8QXUMdBftVo=;
 b=3oF8vm+EWggSzpB2uc+7MeRSYJrO/eaGLC6qygXSWcRH5j9cWjY0dB7TaJTyL2UqQt
 HvILPTB2RS1GZfdbKycGUMuigJmA+s+mpbzBfNKosVeZtCxgeRMAT8rpTueQxuae8/6b
 gIxl3oMIYw6kDDao/KOdvI8xq2olT6EAnSojGQiFTS9QY00eG2+/8VlQ12Ck3KIts6+s
 65W6/PnECxjE410stG/EgpEItgHpObYfq+7C3OT6FhQIgk0ObaGfqst/jP9b38wG/xX3
 1zKNnsTixtFt6hVVJjzzquis8iNfpWe2fhxrUezjpHzAu8FjJkHJzo6ShcFZoWdZn43w
 w1BQ==
X-Gm-Message-State: AOAM532RORUKKMPhjxVn8SXE3lL3hgixi65hzwu7/ghVTWSOwR/rRfAc
 AdUxVHFiezB2Ds7t5LhEZ0M=
X-Google-Smtp-Source: ABdhPJxtb/mBc8Sd8bAUcjJEexSgJAO9RoI75nDxUE0MpzKX7svF4MnsInMPdRxYDO0jYV4OATPBzg==
X-Received: by 2002:a05:6402:5179:b0:415:d7f3:c270 with SMTP id
 d25-20020a056402517900b00415d7f3c270mr27019343ede.259.1647384127745; 
 Tue, 15 Mar 2022 15:42:07 -0700 (PDT)
Received: from skbuf ([188.25.231.156]) by smtp.gmail.com with ESMTPSA id
 jg28-20020a170907971c00b006dbd9d72c03sm127164ejc.128.2022.03.15.15.42.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Mar 2022 15:42:07 -0700 (PDT)
Date: Wed, 16 Mar 2022 00:42:05 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220315224205.jzz3m2mroytanesh@skbuf>
References: <20220315002543.190587-1-tobias@waldekranz.com>
 <20220315002543.190587-10-tobias@waldekranz.com>
 <20220315163349.k2rmfdzrd3jvzbor@skbuf>
 <87ee32lumk.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87ee32lumk.fsf@waldekranz.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v4 net-next 09/15] net: dsa: Never offload FDB
 entries on standalone ports
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

On Tue, Mar 15, 2022 at 11:26:59PM +0100, Tobias Waldekranz wrote:
> On Tue, Mar 15, 2022 at 18:33, Vladimir Oltean <olteanv@gmail.com> wrote:
> > On Tue, Mar 15, 2022 at 01:25:37AM +0100, Tobias Waldekranz wrote:
> >> If a port joins a bridge that it can't offload, it will fallback to
> >> standalone mode and software bridging. In this case, we never want to
> >> offload any FDB entries to hardware either.
> >> 
> >> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> >> ---
> >
> > When you resend, please send this patch separately, unless something
> > breaks really ugly with your MST series in place.
> 
> Sure. I found this while testing the software fallback. It prevents a
> segfault in dsa_port_bridge_host_fdb_add, which (rightly, I think)
> assumes that dp->bridge is valid. I feel like this should have a Fixes:
> tag, but I'm not sure which commit to blame. Any suggestions?

Ok, makes sense. So far, unoffloaded bridge ports meant that the DSA
switch driver didn't have a ->port_bridge_join() implementation.
Presumably that also came along with a missing ->port_fdb_add()
implementation. So probably no NPD for the existing code paths, it is
just your unoffloaded MST support that opens up new possibilities.

Anyway, the dereference of dp->bridge first appeared in commit
c26933639b54 ("net: dsa: request drivers to perform FDB isolation")
which is still just in net-next.

> >>  net/dsa/slave.c | 3 +++
> >>  1 file changed, 3 insertions(+)
> >> 
> >> diff --git a/net/dsa/slave.c b/net/dsa/slave.c
> >> index a61a7c54af20..647adee97f7f 100644
> >> --- a/net/dsa/slave.c
> >> +++ b/net/dsa/slave.c
> >> @@ -2624,6 +2624,9 @@ static int dsa_slave_fdb_event(struct net_device *dev,
> >>  	if (ctx && ctx != dp)
> >>  		return 0;
> >>  
> >> +	if (!dp->bridge)
> >> +		return 0;
> >> +
> >>  	if (switchdev_fdb_is_dynamically_learned(fdb_info)) {
> >>  		if (dsa_port_offloads_bridge_port(dp, orig_dev))
> >>  			return 0;
> >> -- 
> >> 2.25.1
> >> 
