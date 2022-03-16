Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E34CC4DB051
	for <lists.bridge@lfdr.de>; Wed, 16 Mar 2022 14:03:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4EE2C81768;
	Wed, 16 Mar 2022 13:03:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1sGovFVUcuhi; Wed, 16 Mar 2022 13:03:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id E5E6C81776;
	Wed, 16 Mar 2022 13:03:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A3E55C0033;
	Wed, 16 Mar 2022 13:03:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2452BC000B
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 13:03:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 01D71409BC
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 13:03:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oujCwoLk-pn3 for <bridge@lists.linux-foundation.org>;
 Wed, 16 Mar 2022 13:03:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8E0A64018D
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 13:03:53 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id bg10so4040608ejb.4
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 06:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=se+rvnHLTMwCDJuZUUaKeJfsDcgnDN9KN2DXN5nL3LI=;
 b=FqRhB8kJ7DAPHXMUR4z2dXdwLCMDBNZYZTQxZ8mZHljQbWDn62iBugk7EMcvIncaBu
 XkX1ohnXLsVuz41HeOEZqTzvefSfZ6GVV2ojTj8B+yE9UVomafyGCXu43qCy9UYqUZZz
 N1/1P29Zqpvkc75cVYt3YuF6wxMRhXbUEuucSLq/T5UGw3q40fX+pREKSbBezaoBeGV8
 ybfL5HMUxmYPlOCp3VHcKTZ29Krhsn4fVpaBvhm2+AFt1Z/Kx+973+5/N2BkVzFU/6nV
 rz2MtO8QBO2Szkw1W6xfAgaQek3XkEXq1Gn3QpmBBhcZzMyvoPy5WCjExWDmsDOu5rET
 IDBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=se+rvnHLTMwCDJuZUUaKeJfsDcgnDN9KN2DXN5nL3LI=;
 b=Vd/8qQPPziCq/SPCgsHMJt62rh358cpN9xZPrZjnOxRBu/XB2Mbmm/CCmVsiMMJV4F
 eJQe7w+Pee9bNNyCysHwmxGyPtjzzwgrzeTe0iVZE6yQRLlylAoz8D1eqwqEEa/1BzJK
 tYJ2Wmvq+5b2XOOLsRINwAMm3BhZmcLj7E3ro+auZN/pd4VV2klYJYRWd2iL30uz8aE3
 ygx/zhfzeQMCfVRDIVBD3EPUaPpu9vJhMgKzoFP6V7ERNmID+fCDU/23oA9RzC5GlF5f
 1mSo+RMOYLXE9aiZy44PqRvCvLLOTl2g/kZ7vrlAlhfgYSlBdVHuJvwo7gpe8ns9IeAD
 Y4RA==
X-Gm-Message-State: AOAM532Shxo6yRXCFO+Kr5s4JTgF44nD+2JrmjWNJexzE9u/3VPz9t9a
 /1MAWizCvkABJ0qQbFOxKFE=
X-Google-Smtp-Source: ABdhPJymWXJcSrB45wAn+bo52zxogrDTdURwJeZ8i8a4xfO9OafdGoinqX9reoqs6F5DLnijqYEJ3w==
X-Received: by 2002:a17:906:2991:b0:6cf:6b24:e92f with SMTP id
 x17-20020a170906299100b006cf6b24e92fmr26688574eje.748.1647435831497; 
 Wed, 16 Mar 2022 06:03:51 -0700 (PDT)
Received: from skbuf ([188.26.57.45]) by smtp.gmail.com with ESMTPSA id
 p23-20020a170906605700b006ccebe7f75dsm875253ejj.123.2022.03.16.06.03.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Mar 2022 06:03:50 -0700 (PDT)
Date: Wed, 16 Mar 2022 15:03:49 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220316130349.kmjonrhsx7upj55h@skbuf>
References: <20220315002543.190587-1-tobias@waldekranz.com>
 <20220315002543.190587-11-tobias@waldekranz.com>
 <20220315171108.ameddbqv2sehq3pp@skbuf>
 <8735jil0m1.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8735jil0m1.fsf@waldekranz.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v4 net-next 10/15] net: dsa: Validate hardware
 support for MST
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

On Wed, Mar 16, 2022 at 10:15:18AM +0100, Tobias Waldekranz wrote:
> >> +int dsa_port_mst_enable(struct dsa_port *dp, bool on,
> >> +			struct netlink_ext_ack *extack)
> >> +{
> >> +	if (!on)
> >> +		return 0;
> >> +
> >> +	if (!dsa_port_supports_mst(dp)) {
> >> +		NL_SET_ERR_MSG_MOD(extack, "Hardware does not support MST");
> >> +		return -EINVAL;
> >> +	}
> >> +
> >> +	return 0;
> >> +}
> >
> > Experimenting a bit... maybe this looks tidier? We make the "if" condition
> > have the same basic structure as the previous "if (br_mst_enabled(br) &&
> > !dsa_port_supports_mst(dp))", albeit transformed using De Morgan's rules.
> >
> > {
> > 	if (!on || dsa_port_supports_mst(dp))
> > 		return 0;
> >
> > 	NL_SET_ERR_MSG_MOD(extack, "Hardware does not support MST");
> > 	return -EINVAL;
> > }
> 
> I initially had it like this. It looks tidier, yes - but to me the
> intent is less obvious when reading it. How about:
> 
> {
> 	if (on && !dsa_port_supports_mst(dp)) {
> 		NL_SET_ERR_MSG_MOD(extack, "Hardware does not support MST");
> 		return -EINVAL;
> 	}
> 
> 	return 0;
> }

Yes, let's go with this.
