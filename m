Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7804DA573
	for <lists.bridge@lfdr.de>; Tue, 15 Mar 2022 23:35:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2796040124;
	Tue, 15 Mar 2022 22:35:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eFA0x37dncrY; Tue, 15 Mar 2022 22:35:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 734D14053E;
	Tue, 15 Mar 2022 22:35:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 287F2C0033;
	Tue, 15 Mar 2022 22:35:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 803BEC0012
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 22:35:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5BA45841ED
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 22:35:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uOaeDPaoExIM for <bridge@lists.linux-foundation.org>;
 Tue, 15 Mar 2022 22:35:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 62B3584279
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 22:35:07 +0000 (UTC)
Received: by mail-lf1-x12a.google.com with SMTP id h14so840225lfk.11
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 15:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=WG7wAjUqAepF5ItMqejD0JSQeopv4zw5TgTzR3nTVpg=;
 b=08bbh2q2doQ/hf09T5YToBREVzd93tB1dJg+jlIcEZvH3cwaNw0qpNdLWn+A/zuNX8
 Z8fTqKdoh51qK+8sigaTMCHFoQKXa23V9rzd5g25dCU/pIkjrm+AJ5CTBDWo1QNrUglM
 caEA76zCeUAC2BVn4jGOkicaSI+koUtPKQ3dvSte2rHMZxRHo1xXFcwQc0NAfD+TZogS
 AHxG8BJaICXP5JunIZ+6AwE5ayH27QiI4vyOS8RtRDmFq0KgXbIxE7DjMmilTflPy5nX
 8SwX4X02D6zypf6GMr8hknSnnxAZlrQWcZzrLPGlW4BTLaD8+jxfjh3PbvPWLknwNW9v
 bnEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=WG7wAjUqAepF5ItMqejD0JSQeopv4zw5TgTzR3nTVpg=;
 b=iLbcMKxLUuYYj6IFvxRNc2Z0+F+oyNX6Q0nAl6JzAaValaXy2zMcfNr7qDW6Wey17+
 dbrcobDl427X+m5jDCVH5TEA6n9gvI8WzpWa2lkhGirNxnyPMsWd2scl51vTqc93gf6c
 UYlXkZ/YAw48O0WZGULX+5FSSpyhPuc0T44omxS+bI7s+Uuy29R0OsDq/yJzToLffoyK
 bprT6B7wI0MfcUXWDtIpd3Qs5w0eBcwMOQUXXq23wDQ90QFQn5IolC7DfwH95uYDTfDv
 NCFuqVUUbCLhMACesDuqei7ppFR3hKWZALoUj5ANCcf04s9sos2fKvrV5U/5VsW1Ienl
 Oc9Q==
X-Gm-Message-State: AOAM533aV1V9WvJtErxfueROtdFdoy8RcpLYVXdV3y5noFsOnvW7ujb6
 cJK4VXEQAh8liVAGE74b7L4+aNf2RymgNPnO
X-Google-Smtp-Source: ABdhPJwQqGoHou+iDNZj+gXfz4ZxqVT1PcTU4zpn7U0Gnp6jyqD5tE8fL0oUqR7ILv8rSynTGNNDMQ==
X-Received: by 2002:a05:6512:3e0c:b0:448:3480:1fe5 with SMTP id
 i12-20020a0565123e0c00b0044834801fe5mr17628788lfv.358.1647383704869; 
 Tue, 15 Mar 2022 15:35:04 -0700 (PDT)
Received: from wkz-x280 (h-212-85-90-115.A259.priv.bahnhof.se. [212.85.90.115])
 by smtp.gmail.com with ESMTPSA id
 s5-20020ac24645000000b00448628b8462sm19133lfo.249.2022.03.15.15.35.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Mar 2022 15:35:04 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20220315165455.3nakoccbm7c7d2w5@skbuf>
References: <20220315002543.190587-1-tobias@waldekranz.com>
 <20220315002543.190587-4-tobias@waldekranz.com>
 <20220315165455.3nakoccbm7c7d2w5@skbuf>
Date: Tue, 15 Mar 2022 23:35:03 +0100
Message-ID: <878rtalu94.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, Mar 15, 2022 at 18:54, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Tue, Mar 15, 2022 at 01:25:31AM +0100, Tobias Waldekranz wrote:
>> Make it possible to change the port state in a given MSTI by extending
>> the bridge port netlink interface (RTM_SETLINK on PF_BRIDGE).The
>> proposed iproute2 interface would be:
>> 
>>     bridge mst set dev <PORT> msti <MSTI> state <STATE>
>> 
>> Current states in all applicable MSTIs can also be dumped via a
>> corresponding RTM_GETLINK. The proposed iproute interface looks like
>> this:
>> 
>> $ bridge mst
>> port              msti
>> vb1               0
>> 		    state forwarding
>> 		  100
>> 		    state disabled
>> vb2               0
>> 		    state forwarding
>> 		  100
>> 		    state forwarding
>> 
>> The preexisting per-VLAN states are still valid in the MST
>> mode (although they are read-only), and can be queried as usual if one
>> is interested in knowing a particular VLAN's state without having to
>> care about the VID to MSTI mapping (in this example VLAN 20 and 30 are
>> bound to MSTI 100):
>> 
>> $ bridge -d vlan
>> port              vlan-id
>> vb1               10
>> 		    state forwarding mcast_router 1
>> 		  20
>> 		    state disabled mcast_router 1
>> 		  30
>> 		    state disabled mcast_router 1
>> 		  40
>> 		    state forwarding mcast_router 1
>> vb2               10
>> 		    state forwarding mcast_router 1
>> 		  20
>> 		    state forwarding mcast_router 1
>> 		  30
>> 		    state forwarding mcast_router 1
>> 		  40
>> 		    state forwarding mcast_router 1
>> 
>> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>> ---
>> +static int br_mst_process_one(struct net_bridge_port *p,
>> +			      const struct nlattr *attr,
>> +			      struct netlink_ext_ack *extack)
>> +{
>> +	struct nlattr *tb[IFLA_BRIDGE_MST_ENTRY_MAX + 1];
>> +	u16 msti;
>> +	u8 state;
>> +	int err;
>> +
>> +	err = nla_parse_nested(tb, IFLA_BRIDGE_MST_ENTRY_MAX, attr,
>> +			       br_mst_nl_policy, extack);
>> +	if (err)
>> +		return err;
>> +
>> +	if (!tb[IFLA_BRIDGE_MST_ENTRY_MSTI]) {
>> +		NL_SET_ERR_MSG_MOD(extack, "MSTI not specified");
>> +		return -EINVAL;
>> +	}
>> +
>> +	if (!tb[IFLA_BRIDGE_MST_ENTRY_STATE]) {
>> +		NL_SET_ERR_MSG_MOD(extack, "State not specified");
>> +		return -EINVAL;
>> +	}
>> +
>> +	msti = nla_get_u16(tb[IFLA_BRIDGE_MST_ENTRY_MSTI]);
>> +	state = nla_get_u8(tb[IFLA_BRIDGE_MST_ENTRY_STATE]);
>> +
>> +	br_mst_set_state(p, msti, state);
>
> Is there any reason why this isn't propagating the error?

No, we definitely should. Thanks.

>> +	return 0;
>> +}
