Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F02734DA021
	for <lists.bridge@lfdr.de>; Tue, 15 Mar 2022 17:33:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69A2460FED;
	Tue, 15 Mar 2022 16:33:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hGvuq1ju6-Wu; Tue, 15 Mar 2022 16:33:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 05ED860AFB;
	Tue, 15 Mar 2022 16:33:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B6DFAC0033;
	Tue, 15 Mar 2022 16:33:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EBABFC000B
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 16:33:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DA45160AFB
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 16:33:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hcYWQ87oSdXn for <bridge@lists.linux-foundation.org>;
 Tue, 15 Mar 2022 16:33:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1B4FD6059D
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 16:33:54 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id p15so42703474ejc.7
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 09:33:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=AWRbE0SqFuV4wqzStVfSF+dwgpeyvmT951OzMpXt1TM=;
 b=GOxJ4n+XZnHOfmX6RhO0J0yhAZB3qFAqYS0ZkPj3UhB7tV95b9G5aJkNP9II9UeXsc
 TjtS9FFQ7sJTO+DjyEwOA7VCcrRExK10UaGSOmo2UcHwbmVRv8KXwN5yPauEx2B6iEaS
 SzgtTyAP4OpMsRy11YqQHQrPGfHzJg3K3AT9/ttb+KYo6Deu7rGHSl9fY9hWxfSY1umu
 GDRuIjVG81XQd6M54gm2aPcvAWgghVgwWake3ZxRvBm2JiNPt+AX8BjM/jgM6Ujgiuvl
 v1PXZ5SK0nWZVRs9orxXyBqf3qiQPCO7+fqjguw548b7vDXA94yqJ/ruUVb1ZmSBcDZf
 7piA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AWRbE0SqFuV4wqzStVfSF+dwgpeyvmT951OzMpXt1TM=;
 b=uMp54Okq/qxq2sujBDYV5D5bVqsHqdcsYb3PNgMu4F8k4IYqIbB0l9FR1gxZMFN9p0
 cyJXoW8fNEV+9h37jJ2WiuvAZKrtE3d7YR5ZyIKTRD2X/gvpShUeNBSZzCYFJ+PiRiB3
 3D10vGcz3SzVJ6YJyFEbPcKviH5u/dR1CfsPW1f7SVX+aY6aeyC3fqJkPFgmNW86UDxr
 Oie7MAvBWoVAgewbwqdG6CXxmJ4IGpPt+zoyCj+CRlR85gJBUaZxCSoTuKK1VqMt7UXc
 m6vWmZkjamrNycSmoIHtI9JteU9m1q/XzmsDaN2+j1z5fXm/K28TlQrN0jMPe9hkTISI
 UvVw==
X-Gm-Message-State: AOAM53169bSa3ck/3YKGu5hjIZ5UCIZ+PNdfJ1ipT9RIGvB16DbXmQFV
 shNep+hrOpVrcCwkSNUzT/k=
X-Google-Smtp-Source: ABdhPJyxZ5Dj5nbD1iYsZlkTxc6XF5i/Wr9GefE4CWGt955QvEBj/tXmYZleja4Sh7ujs868a2K2Zw==
X-Received: by 2002:a17:906:c1d6:b0:6d6:e0a3:bbc7 with SMTP id
 bw22-20020a170906c1d600b006d6e0a3bbc7mr23293709ejb.484.1647362031906; 
 Tue, 15 Mar 2022 09:33:51 -0700 (PDT)
Received: from skbuf ([188.25.231.156]) by smtp.gmail.com with ESMTPSA id
 y12-20020a056402358c00b00418d7f02d63sm284290edc.53.2022.03.15.09.33.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Mar 2022 09:33:51 -0700 (PDT)
Date: Tue, 15 Mar 2022 18:33:49 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220315163349.k2rmfdzrd3jvzbor@skbuf>
References: <20220315002543.190587-1-tobias@waldekranz.com>
 <20220315002543.190587-10-tobias@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220315002543.190587-10-tobias@waldekranz.com>
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

On Tue, Mar 15, 2022 at 01:25:37AM +0100, Tobias Waldekranz wrote:
> If a port joins a bridge that it can't offload, it will fallback to
> standalone mode and software bridging. In this case, we never want to
> offload any FDB entries to hardware either.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---

When you resend, please send this patch separately, unless something
breaks really ugly with your MST series in place.

>  net/dsa/slave.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/net/dsa/slave.c b/net/dsa/slave.c
> index a61a7c54af20..647adee97f7f 100644
> --- a/net/dsa/slave.c
> +++ b/net/dsa/slave.c
> @@ -2624,6 +2624,9 @@ static int dsa_slave_fdb_event(struct net_device *dev,
>  	if (ctx && ctx != dp)
>  		return 0;
>  
> +	if (!dp->bridge)
> +		return 0;
> +
>  	if (switchdev_fdb_is_dynamically_learned(fdb_info)) {
>  		if (dsa_port_offloads_bridge_port(dp, orig_dev))
>  			return 0;
> -- 
> 2.25.1
> 
