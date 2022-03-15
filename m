Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F844DA08C
	for <lists.bridge@lfdr.de>; Tue, 15 Mar 2022 17:55:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AC073408D1;
	Tue, 15 Mar 2022 16:55:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K29QP8E0lEHK; Tue, 15 Mar 2022 16:55:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id DA50240012;
	Tue, 15 Mar 2022 16:55:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9CDF6C0033;
	Tue, 15 Mar 2022 16:55:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D150EC000B
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 16:55:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BC84F401EB
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 16:55:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SLmx9dJCLQT6 for <bridge@lists.linux-foundation.org>;
 Tue, 15 Mar 2022 16:55:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EB07E401E8
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 16:54:59 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id d10so42808941eje.10
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 09:54:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Qy5CIGpbJUXBMUFax/Gs3JPDrYnJFLZ0SC9FvW5pKqk=;
 b=Zxs5hIHUnMp/4fwLFETPt0dMafEJXaocxaxZgCDCk9TWRRs61CJfUF9bxG8HbgcZ6Q
 e/5TMX7xjIpoR9C/esaQ1wEPeLclV9Vv3ugpyEEzVw7tJORwHM4nNgN98ul0DtddsvCM
 f7eDB5bwAIV27Vvo1y9TcJ/mD9yPRtKGU4QDfR9QIbwSeMho6rGfeOrT9BZ4rnPtieuO
 eWzuiqRoiG05vRmarHaDXofQKhEcU3/qm8cD2KbY6tQicNqFnR/HNnwGmon2CTgC6a6y
 r3ndEiDPdB1dBDwHGjDMLWLyfUHxHIh/afK3GgSRzUCcxaDxUPSzZsIqMwBji3f2qQg1
 k5Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Qy5CIGpbJUXBMUFax/Gs3JPDrYnJFLZ0SC9FvW5pKqk=;
 b=nALqnzFon5y3mgE6X+1xvZhKS8myDcDM/Yy04oOwZkHgxW0IVD8Z5zc0K+eSMAypGa
 L4n7as8ULQM4un3LpLMGhCdn5ge1V04ikKs98dKx9TSn9R68HME5ZtpOkePBSNHwQpwI
 CK+QhljaF2p9Z8AWlc6BN2kSsUqV7+MxequhjlPrXJe0dImDrQvEpn7DfdZamVRu9nVA
 2QitRrdcB8VmVVf0PZwFjpLkLvBCFnOkNVAmm7xUqZ1CkLFWqpUqKcNXptjo0RYMKYJ4
 mw8tM/ss70+neBxyyVT0rOpBGfEJj11PwHMfq1QnCPUG/t4OhG5ajWnh0wdrCWFLXX35
 ChzQ==
X-Gm-Message-State: AOAM531xeLJed9KJtknUzaUXAt4DxQnFSJLcLK0lAhl1GThlpXpLTMWL
 ncX8fktAxI+F+BsDlz8Sbg0=
X-Google-Smtp-Source: ABdhPJwna+ZLplFZlfRYqNUJoffRemCmoeW6sb8yKaOsz5iQNy38QNP7G1ir+ePEw61BJavMlsJ37A==
X-Received: by 2002:a17:907:8a04:b0:6b6:1f22:a5e with SMTP id
 sc4-20020a1709078a0400b006b61f220a5emr23443729ejc.528.1647363297897; 
 Tue, 15 Mar 2022 09:54:57 -0700 (PDT)
Received: from skbuf ([188.25.231.156]) by smtp.gmail.com with ESMTPSA id
 l2-20020aa7cac2000000b003f9b3ac68d6sm9820877edt.15.2022.03.15.09.54.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Mar 2022 09:54:57 -0700 (PDT)
Date: Tue, 15 Mar 2022 18:54:55 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220315165455.3nakoccbm7c7d2w5@skbuf>
References: <20220315002543.190587-1-tobias@waldekranz.com>
 <20220315002543.190587-4-tobias@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220315002543.190587-4-tobias@waldekranz.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v4 net-next 03/15] net: bridge: mst: Support
 setting and reporting MST port states
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

On Tue, Mar 15, 2022 at 01:25:31AM +0100, Tobias Waldekranz wrote:
> Make it possible to change the port state in a given MSTI by extending
> the bridge port netlink interface (RTM_SETLINK on PF_BRIDGE).The
> proposed iproute2 interface would be:
> 
>     bridge mst set dev <PORT> msti <MSTI> state <STATE>
> 
> Current states in all applicable MSTIs can also be dumped via a
> corresponding RTM_GETLINK. The proposed iproute interface looks like
> this:
> 
> $ bridge mst
> port              msti
> vb1               0
> 		    state forwarding
> 		  100
> 		    state disabled
> vb2               0
> 		    state forwarding
> 		  100
> 		    state forwarding
> 
> The preexisting per-VLAN states are still valid in the MST
> mode (although they are read-only), and can be queried as usual if one
> is interested in knowing a particular VLAN's state without having to
> care about the VID to MSTI mapping (in this example VLAN 20 and 30 are
> bound to MSTI 100):
> 
> $ bridge -d vlan
> port              vlan-id
> vb1               10
> 		    state forwarding mcast_router 1
> 		  20
> 		    state disabled mcast_router 1
> 		  30
> 		    state disabled mcast_router 1
> 		  40
> 		    state forwarding mcast_router 1
> vb2               10
> 		    state forwarding mcast_router 1
> 		  20
> 		    state forwarding mcast_router 1
> 		  30
> 		    state forwarding mcast_router 1
> 		  40
> 		    state forwarding mcast_router 1
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---
> +static int br_mst_process_one(struct net_bridge_port *p,
> +			      const struct nlattr *attr,
> +			      struct netlink_ext_ack *extack)
> +{
> +	struct nlattr *tb[IFLA_BRIDGE_MST_ENTRY_MAX + 1];
> +	u16 msti;
> +	u8 state;
> +	int err;
> +
> +	err = nla_parse_nested(tb, IFLA_BRIDGE_MST_ENTRY_MAX, attr,
> +			       br_mst_nl_policy, extack);
> +	if (err)
> +		return err;
> +
> +	if (!tb[IFLA_BRIDGE_MST_ENTRY_MSTI]) {
> +		NL_SET_ERR_MSG_MOD(extack, "MSTI not specified");
> +		return -EINVAL;
> +	}
> +
> +	if (!tb[IFLA_BRIDGE_MST_ENTRY_STATE]) {
> +		NL_SET_ERR_MSG_MOD(extack, "State not specified");
> +		return -EINVAL;
> +	}
> +
> +	msti = nla_get_u16(tb[IFLA_BRIDGE_MST_ENTRY_MSTI]);
> +	state = nla_get_u8(tb[IFLA_BRIDGE_MST_ENTRY_STATE]);
> +
> +	br_mst_set_state(p, msti, state);

Is there any reason why this isn't propagating the error?

> +	return 0;
> +}
