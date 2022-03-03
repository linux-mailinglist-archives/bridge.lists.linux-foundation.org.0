Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9D84CC8E3
	for <lists.bridge@lfdr.de>; Thu,  3 Mar 2022 23:28:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 46F7760F64;
	Thu,  3 Mar 2022 22:28:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t69LzYaaeHyU; Thu,  3 Mar 2022 22:28:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id C9C3760F74;
	Thu,  3 Mar 2022 22:28:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 77CC9C0070;
	Thu,  3 Mar 2022 22:28:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8CB4EC000B
 for <bridge@lists.linux-foundation.org>; Thu,  3 Mar 2022 22:28:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7A8F960F72
 for <bridge@lists.linux-foundation.org>; Thu,  3 Mar 2022 22:28:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 41TV_fv4844w for <bridge@lists.linux-foundation.org>;
 Thu,  3 Mar 2022 22:28:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C065560F64
 for <bridge@lists.linux-foundation.org>; Thu,  3 Mar 2022 22:28:52 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id qt6so13659769ejb.11
 for <bridge@lists.linux-foundation.org>; Thu, 03 Mar 2022 14:28:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Q3KMKlNL1UmXA+3fpqyraxkBiFVYfDRSUjKE3l3RuVk=;
 b=MDnX4bgCQ/oEW0UhmojxOqONfN9vQW6YLWXvJiTN9ZgftqcQr1HntMOS2g3/z2DPmE
 8m33ZJNdMHy5QvE34NBHTPyrFtQvSqNCX42VcKXLUA28fVVOjSENDm9kkQb1YrThCzCw
 4mhs+Ja7G4trf5TymB8l8SBevLF4w8Cx1wjasWV1OlHemYMPolDQEc3m40FjuotYMIpW
 V6ohRAT19l0vMqSS6sFnNBHePLzvjUzcp24j5GeZvNTFfz0x9TD2VOYGM0sWaQzurbAG
 VnZd3CbpCGqvfBGxVJoFWuMNGVRlf0X0sqsXMbKEppdV4jwy/kqgzP0I0ikBXbUVso/Z
 hbtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Q3KMKlNL1UmXA+3fpqyraxkBiFVYfDRSUjKE3l3RuVk=;
 b=nkrossM1afrx3bqZrXc1t3AV9GV0S3R+PlgFFGVZQetl7NtPmWFYBmOl9cav3T+O/2
 Ukf/O6ot0SgxIFGyIo7WX/AcQ4yKtxOGzRP11xQBgIek5SqkL3qGcHv3vO0b8bNe8zDy
 x+eg/SDr8IAY1aJ3Y7SEdN3i2Uc2jPpk9c+tXJediC8qn2SNuk0ZwbgUrbrsb0w0nxGk
 ug5CoL1K7RdxjQb34lIyMBkaakauXp+d+ct6+PYkq7nvId62NH7cQxBXdLnTb0yay0SS
 fDzuk33zVeCaZEq5bEL7JiXIVQPyIN+PM6I0Q/K5tUr4DQCJcFz/E3VSToLDDzxhz8N7
 ITfA==
X-Gm-Message-State: AOAM530sWcQHXNazo9z+GPvkaqLthf1CkNzngmkqRIqKo6tscxjOzrfI
 S/NDZzLDAMjzzazV/6EjqkU=
X-Google-Smtp-Source: ABdhPJzk13wyTbmYgwXumamuMcIRNwpzubAWgHvblQ9VhZ2Wj9eexC+yjherORwhPTNIQRvPpaYgVg==
X-Received: by 2002:a17:906:5d11:b0:6da:68ed:270f with SMTP id
 g17-20020a1709065d1100b006da68ed270fmr7732259ejt.661.1646346530968; 
 Thu, 03 Mar 2022 14:28:50 -0800 (PST)
Received: from skbuf ([188.25.231.156]) by smtp.gmail.com with ESMTPSA id
 n27-20020a1709062bdb00b006da975173bfsm810028ejg.170.2022.03.03.14.28.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Mar 2022 14:28:50 -0800 (PST)
Date: Fri, 4 Mar 2022 00:28:48 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220303222848.4e2s2zrbzfckmiqw@skbuf>
References: <20220301100321.951175-1-tobias@waldekranz.com>
 <20220301100321.951175-2-tobias@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220301100321.951175-2-tobias@waldekranz.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v2 net-next 01/10] net: bridge: mst: Multiple
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

On Tue, Mar 01, 2022 at 11:03:12AM +0100, Tobias Waldekranz wrote:
> Allow the user to switch from the current per-VLAN STP mode to an MST
> mode.
> 
> Up to this point, per-VLAN STP states where always isolated from each
> other. This is in contrast to the MSTP standard (802.1Q-2018, Clause
> 13.5), where VLANs are grouped into MST instances (MSTIs), and the
> state is managed on a per-MSTI level, rather that at the per-VLAN
> level.
> 
> Perhaps due to the prevalence of the standard, many switching ASICs
> are built after the same model. Therefore, add a corresponding MST
> mode to the bridge, which we can later add offloading support for in a
> straight-forward way.
> 
> For now, all VLANs are fixed to MSTI 0, also called the Common
> Spanning Tree (CST). That is, all VLANs will follow the port-global
> state.
> 
> Upcoming changes will make this actually useful by allowing VLANs to
> be mapped to arbitrary MSTIs and allow individual MSTI states to be
> changed.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---
> +void br_mst_vlan_set_state(struct net_bridge_port *p, struct net_bridge_vlan *v,
> +			   u8 state)

Function can be static.

> +{
> +	struct net_bridge_vlan_group *vg = nbp_vlan_group(p);
> +
> +	if (v->state == state)
> +		return;
> +
> +	br_vlan_set_state(v, state);
> +
> +	if (v->vid == vg->pvid)
> +		br_vlan_set_pvid_state(vg, state);
> +}
