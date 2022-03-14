Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD754D8A82
	for <lists.bridge@lfdr.de>; Mon, 14 Mar 2022 18:07:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2494560B5B;
	Mon, 14 Mar 2022 17:07:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BjSZXUfkyHx8; Mon, 14 Mar 2022 17:07:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id B984460B01;
	Mon, 14 Mar 2022 17:07:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7A779C0084;
	Mon, 14 Mar 2022 17:07:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 09CAEC0012
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 17:07:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E6CDE4087B
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 17:07:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z-gAdFtZqByU for <bridge@lists.linux-foundation.org>;
 Mon, 14 Mar 2022 17:07:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9C15B40878
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 17:07:50 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id gb39so35159814ejc.1
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 10:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=B8S5CePBfzrVCN/ZCs2BTxWuc9mvMQ9JoCGkKm6n008=;
 b=JddOuH6IACYyaa/tIi4d1gXpCB3xrMraVpH2XUdtQatNapgahGumBtAtcfu0gaVfVf
 mqwtx4llIbo3SomPBbJgGPUwYvfaXGOcOuGqqdMcc3d7qAd3n8Spg43A2ZbenDG2kxUK
 9wPgmy2V+kw43rle8itGKuJXYe0FlZyFrvytPNB1wnw+Xlz5qlgPor6K1RjsGVP/bxzo
 9rMg+ElMLBhrj+uAhZe9zjrtNgObr+hLPHBFSIp2EppxsdglnssMcYq5P164i2ivBBSi
 3ldreuPWdV1810u6wrWU5cX0f579X/uLvA76/Mvsl/F58Kt5u+LPXK/SVz8780uLM75Q
 ffZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=B8S5CePBfzrVCN/ZCs2BTxWuc9mvMQ9JoCGkKm6n008=;
 b=thiUBaU11wf+549n5A7EpKswG/AZcB/FK9MWLq+3DgZWWiQG034m3ej0Y73oRxU9SK
 0DP1w7eTfq0ouuhaaI6TYt6SHtqrlyHGRj4K2XMXjU613RcwiA2eIWuW6hcBIz1th8DE
 9EcBMTimEF7CRhE/bpa5Gzf+++z9XDo63hn2/J5ReAJQ0on0MdxOFNr9MA9vxNtVT2WF
 V4i81cIMs+wjbVuIUcLrsZBo+LysF++JVo0L2eP2P77PFWRyI23GUwSsaYZgQaaIisYM
 Vze0z05BOs0tqP3wmO6vDHISVCC1WDJJ0p36X23jH100CjLXWUwvVuzIo2zIgtiZ3HZF
 TkHg==
X-Gm-Message-State: AOAM533JaTXb4xI/f7sA/OziR3hN5MP1/mlL3AFbHqba/DWOKT4jHF2x
 G2+mGScYRjoxJnIcCrR8o+A=
X-Google-Smtp-Source: ABdhPJzfk/wrcwCi8JX2pmOKMrdjei5CfYv8dgjn6RSGi90CG3GPik3sk3XCPGonC3haROHhc+j8FA==
X-Received: by 2002:a17:906:9b85:b0:6db:ab80:7924 with SMTP id
 dd5-20020a1709069b8500b006dbab807924mr12533799ejc.160.1647277666339; 
 Mon, 14 Mar 2022 10:07:46 -0700 (PDT)
Received: from skbuf ([188.25.231.156]) by smtp.gmail.com with ESMTPSA id
 uz4-20020a170907118400b006dab1ea6e3asm7021586ejb.51.2022.03.14.10.07.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 10:07:45 -0700 (PDT)
Date: Mon, 14 Mar 2022 19:07:44 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220314170744.ugirixeq5t7ddcgo@skbuf>
References: <20220314095231.3486931-1-tobias@waldekranz.com>
 <20220314095231.3486931-11-tobias@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220314095231.3486931-11-tobias@waldekranz.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, Petr Machata <petrm@nvidia.com>,
 Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, netdev@vger.kernel.org,
 Cooper Lees <me@cooperlees.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Matt Johnston <matt@codeconstruct.com.au>,
 davem@davemloft.net, linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v3 net-next 10/14] net: dsa: Pass VLAN MSTI
 migration notifications to driver
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

On Mon, Mar 14, 2022 at 10:52:27AM +0100, Tobias Waldekranz wrote:
> Add the usual trampoline functionality from the generic DSA layer down
> to the drivers for VLAN MSTI migrations.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>
