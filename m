Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A122F6624D6
	for <lists.bridge@lfdr.de>; Mon,  9 Jan 2023 12:57:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 53619414C8;
	Mon,  9 Jan 2023 11:57:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 53619414C8
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=Ua7tqnmz
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gRnzLbha2vXv; Mon,  9 Jan 2023 11:57:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id A7C254150F;
	Mon,  9 Jan 2023 11:57:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7C254150F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 552E3C007B;
	Mon,  9 Jan 2023 11:57:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CC761C002D
 for <bridge@lists.linux-foundation.org>; Mon,  9 Jan 2023 11:56:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 93A7A81865
 for <bridge@lists.linux-foundation.org>; Mon,  9 Jan 2023 11:56:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 93A7A81865
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Ua7tqnmz
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YfXDaRMiK4CO for <bridge@lists.linux-foundation.org>;
 Mon,  9 Jan 2023 11:56:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BEBC81342
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1BEBC81342
 for <bridge@lists.linux-foundation.org>; Mon,  9 Jan 2023 11:56:58 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id x10so9235011edd.10
 for <bridge@lists.linux-foundation.org>; Mon, 09 Jan 2023 03:56:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=R/pT23tJD4oTt91rYqRLukayxZ3L3T77mmbN65HM1ng=;
 b=Ua7tqnmz76QuyglO1osJpuYr+bgSHGx1SUhy9z7kPTzzillWXVYwuu3x4UQrgzc539
 lBTDj1CsnpAZccHPWU6T1VGv8Wtm3df9updiX3VWX68jatXyYrcI0oB7C2B+gG8kPjYG
 QWhGgb8Au8oa0K2db+FwCP78MGf2UiqT3DIrioBJidIYg2SpgzrKAZJn8uX04Us5DgpY
 9SESgaRE3UwVLiqGaMQ+NcAGCq3jgvrFu5/yL1iCUp7X7cDtHQ1dlcULZQQt8V0Ox+4a
 XbL+DUp1X8MeSKqjzXIEH8s9MT2Oodqy0uHatvzIa/P+PkXC0K4jjQnJ9lwxgPEoiPJw
 Vamw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=R/pT23tJD4oTt91rYqRLukayxZ3L3T77mmbN65HM1ng=;
 b=QfrrSem+MLx96MZELEf44WR68Yb58Pv4ewv9oKBd3MOLHmevv1resVo45CKswUWQd1
 QuPcAvdtM5gucQsEXxn9c09XgQtfcja3LFqcKbDaXppdfboE/W/2iuHcu3XHSeTQXcKy
 L0Y6sIyn+doblmrJhCm5ms5WF/cSIazoINYOsCXsB700cmVbGpqgUjb9oo+iPbsRBJg0
 q8bIE6kLYA1YzXHSw1irdQTW/knDS/8qWa6oZ1qZprPghjOtRDHd+CAuj541RX8OneMJ
 J+CBzkYMmMkN1L3AjyAGnMeQThCtUlm+hwrSzNJICXljM1EKL4eYJvVtt27OeJfkR/4J
 J+yw==
X-Gm-Message-State: AFqh2kpQ26GN43F2K28VQxTzlnbL67fnPbxyt9UNJ2j/7aOes5I4Y1QS
 9WRCxUlY0rH6wqNKQkRw/Zg=
X-Google-Smtp-Source: AMrXdXupavywksOzsGvJd+G6X2+bu6gHlKAHWmcHS/M09LcC+/A+TIPVjFvCTyKAFkaLD9KNgwB6Yw==
X-Received: by 2002:a05:6402:8cc:b0:499:8849:5fb2 with SMTP id
 d12-20020a05640208cc00b0049988495fb2mr3991753edz.28.1673265416050; 
 Mon, 09 Jan 2023 03:56:56 -0800 (PST)
Received: from skbuf ([188.27.185.38]) by smtp.gmail.com with ESMTPSA id
 g11-20020a056402428b00b004722d7e8c7csm3614118edc.14.2023.01.09.03.56.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Jan 2023 03:56:55 -0800 (PST)
Date: Mon, 9 Jan 2023 13:56:53 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Ido Schimmel <idosch@idosch.org>
Message-ID: <20230109115653.6yjijaj63n2v35lw@skbuf>
References: <20220316150857.2442916-1-tobias@waldekranz.com>
 <20220316150857.2442916-2-tobias@waldekranz.com>
 <Y7vK4T18pOZ9KAKE@shredder> <20230109100236.euq7iaaorqxrun7u@skbuf>
 <Y7v98s8lC1WUvsSO@shredder>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y7v98s8lC1WUvsSO@shredder>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org, Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v5 net-next 01/15] net: bridge: mst: Multiple
 Spanning Tree (MST) mode
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

On Mon, Jan 09, 2023 at 01:43:46PM +0200, Ido Schimmel wrote:
> OK, thanks for confirming. Will send a patch later this week if Tobias
> won't take care of it by then. First patch will probably be [1] to make
> sure we dump the correct MST state to user space. It will also make it
> easier to show the problem and validate the fix.
> 
> [1]
> diff --git a/net/bridge/br.c b/net/bridge/br.c
> index 4f5098d33a46..f02a1ad589de 100644
> --- a/net/bridge/br.c
> +++ b/net/bridge/br.c
> @@ -286,7 +286,7 @@ int br_boolopt_get(const struct net_bridge *br, enum br_boolopt_id opt)
>  	case BR_BOOLOPT_MCAST_VLAN_SNOOPING:
>  		return br_opt_get(br, BROPT_MCAST_VLAN_SNOOPING_ENABLED);
>  	case BR_BOOLOPT_MST_ENABLE:
> -		return br_opt_get(br, BROPT_MST_ENABLED);
> +		return br_mst_is_enabled(br);

Well, this did report the correct MST state despite the incorrect static
branch state, no? The users of br_mst_is_enabled(br) are broken, not
those of br_opt_get(br, BROPT_MST_ENABLED).

Anyway, I see there's a br_mst_is_enabled() and also a br_mst_enabled()?!
One is used in the fast path and the other in the slow path. They should
probably be merged, I guess. They both exist probably because somebody
thought that the "if (!netif_is_bridge_master(dev))" test is redundant
in the fast path.

>  	default:
>  		/* shouldn't be called with unsupported options */
>  		WARN_ON(1);
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 75aff9bbf17e..7f0475f62d45 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -1827,7 +1827,7 @@ static inline bool br_vlan_state_allowed(u8 state, bool learn_allow)
>  /* br_mst.c */
>  #ifdef CONFIG_BRIDGE_VLAN_FILTERING
>  DECLARE_STATIC_KEY_FALSE(br_mst_used);
> -static inline bool br_mst_is_enabled(struct net_bridge *br)
> +static inline bool br_mst_is_enabled(const struct net_bridge *br)
>  {
>  	return static_branch_unlikely(&br_mst_used) &&
>  		br_opt_get(br, BROPT_MST_ENABLED);
> @@ -1845,7 +1845,7 @@ int br_mst_fill_info(struct sk_buff *skb,
>  int br_mst_process(struct net_bridge_port *p, const struct nlattr *mst_attr,
>  		   struct netlink_ext_ack *extack);
>  #else
> -static inline bool br_mst_is_enabled(struct net_bridge *br)
> +static inline bool br_mst_is_enabled(const struct net_bridge *br)
>  {
>  	return false;
>  }
