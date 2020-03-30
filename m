Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F95197FA4
	for <lists.bridge@lfdr.de>; Mon, 30 Mar 2020 17:30:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 05AE1877A4;
	Mon, 30 Mar 2020 15:30:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uSw8rezH+fgE; Mon, 30 Mar 2020 15:30:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id BD21287120;
	Mon, 30 Mar 2020 15:30:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9936DC07FF;
	Mon, 30 Mar 2020 15:30:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CA369C07FF
 for <bridge@lists.linux-foundation.org>; Mon, 30 Mar 2020 15:30:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C4BED86456
 for <bridge@lists.linux-foundation.org>; Mon, 30 Mar 2020 15:30:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wh5htd0U6GUu for <bridge@lists.linux-foundation.org>;
 Mon, 30 Mar 2020 15:30:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5AADD86451
 for <bridge@lists.linux-foundation.org>; Mon, 30 Mar 2020 15:30:51 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id t17so18565766ljc.12
 for <bridge@lists.linux-foundation.org>; Mon, 30 Mar 2020 08:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=MfvOmIspdiTZx+YN5qTVFVKcge2K4qjWfcK20gYqoiw=;
 b=WFPm18P+hehJbtGqWYENKe7ddU+TNRoiGFEHzzgaHjvlyIAOfWUndukoDy5czuymXp
 cpXBbX/Max/+ijBO3/972mh5Np4N5bLdmbRb23ETsvotZta6d1CXNBS5Qt5gzOetZ/00
 zWi5rHehHULUBYcw54npWZ0Crm7CI3ZbquKdc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=MfvOmIspdiTZx+YN5qTVFVKcge2K4qjWfcK20gYqoiw=;
 b=my5q/ACPi8FIlnaxp/v05jpyLu1dbeVz7xVRedA59RxVx1SqbyQ8U7DNFaC3WhAPKe
 kDhZR2HOykXJEdbyAAv7dDtA6Pll/AwXRphs3BnknMpQQOW9G+IqDp9I2yv2DCdj1SAn
 vVcnJm7+KkpxlTKFHFLKaxUbjEhc4c5/awnfZiF5HZ0Hw7qpUUBv1/yOekkfESG4AOqe
 ONYu68hmK1GEWSOKrLvQpCxq0YLsmMv/j4Yee9eY3F8CsRMigBtzJfAqe7Fu3+i4PTgG
 gl9musL/kwz/Zx6W1nx9GARXYMrlGPL50CqCLbdqyjbuk9L6J9CKWiZKU4WfQTwtBGQi
 qvYg==
X-Gm-Message-State: AGi0PuaszecqH6b1XWjHB6z6czAxU4623z+rc8UkBBecpSrXL5xp8aGJ
 CKPZLHqYb2YUTaCoTHp1Jnfr5bwkcVs=
X-Google-Smtp-Source: APiQypJVMkEwXyZdFdVxNim1GI03DpNiFA7mBosSFqvQa+y/+K4ycMmI8fUT16G9PLy3Jofz5CDU2w==
X-Received: by 2002:a2e:b88b:: with SMTP id r11mr7333845ljp.116.1585582248717; 
 Mon, 30 Mar 2020 08:30:48 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id n26sm6882205ljg.93.2020.03.30.08.30.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Mar 2020 08:30:47 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net,
 jiri@resnulli.us, ivecera@redhat.com, kuba@kernel.org,
 roopa@cumulusnetworks.com, olteanv@gmail.com, andrew@lunn.ch,
 UNGLinuxDriver@microchip.com, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org
References: <20200327092126.15407-1-horatiu.vultur@microchip.com>
 <20200327092126.15407-5-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <c64a8e3c-e86a-641d-3cdd-0cec645dd3d1@cumulusnetworks.com>
Date: Mon, 30 Mar 2020 18:30:45 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200327092126.15407-5-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [RFC net-next v4 4/9] bridge: mrp: Implement netlink
 interface to configure MRP
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

On 27/03/2020 11:21, Horatiu Vultur wrote:
> Implement netlink interface to configure MRP. The implementation
> will do sanity checks over the attributes and then eventually call the MRP
> interface.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  net/bridge/br_mrp_netlink.c | 176 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 176 insertions(+)
>  create mode 100644 net/bridge/br_mrp_netlink.c
> 

Hi Horatiu,

> diff --git a/net/bridge/br_mrp_netlink.c b/net/bridge/br_mrp_netlink.c
> new file mode 100644
> index 000000000000..043b7f6cddbe
> --- /dev/null
> +++ b/net/bridge/br_mrp_netlink.c
> @@ -0,0 +1,176 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
> +#include <net/genetlink.h>
> +
> +#include <uapi/linux/mrp_bridge.h>
> +#include "br_private.h"
> +#include "br_private_mrp.h"
> +
> +static int br_mrp_parse_instance(struct net_bridge *br, struct nlattr *attr,
> +				 int cmd)
> +{
> +	struct br_mrp_instance *instance;
> +
> +	if (nla_len(attr) != sizeof(*instance))
> +		return -EINVAL;
> +
> +	instance = nla_data(attr);
> +
> +	if (cmd == RTM_SETLINK)
> +		return br_mrp_add(br, instance);
> +	else
> +		return br_mrp_del(br, instance);
> +}
> +
> +static int br_mrp_parse_port_state(struct net_bridge *br,
> +				   struct net_bridge_port *p,
> +				   struct nlattr *attr)
> +{
> +	enum br_mrp_port_state_type state;
> +
> +	if (nla_len(attr) != sizeof(u32) || !p)
> +		return -EINVAL;
> +
> +	state = nla_get_u32(attr);
> +
> +	return br_mrp_set_port_state(p, state);
> +}
> +
> +static int br_mrp_parse_port_role(struct net_bridge *br,
> +				  struct net_bridge_port *p,
> +				  struct nlattr *attr)
> +{
> +	struct br_mrp_port_role *role;
> +
> +	if (nla_len(attr) != sizeof(*role) || !p)
> +		return -EINVAL;
> +
> +	role = nla_data(attr);
> +
> +	return br_mrp_set_port_role(p, role->ring_id, role->role);
> +}
> +
> +static int br_mrp_parse_ring_state(struct net_bridge *br, struct nlattr *attr)
> +{
> +	struct br_mrp_ring_state *state;
> +
> +	if (nla_len(attr) != sizeof(*state))
> +		return -EINVAL;
> +
> +	state = nla_data(attr);
> +
> +	return br_mrp_set_ring_state(br, state->ring_id, state->ring_state);
> +}
> +
> +static int br_mrp_parse_ring_role(struct net_bridge *br, struct nlattr *attr)
> +{
> +	struct br_mrp_ring_role *role;
> +
> +	if (nla_len(attr) != sizeof(*role))
> +		return -EINVAL;
> +
> +	role = nla_data(attr);
> +
> +	return br_mrp_set_ring_role(br, role->ring_id, role->ring_role);
> +}
> +
> +static int br_mrp_parse_start_test(struct net_bridge *br, struct nlattr *attr)
> +{
> +	struct br_mrp_start_test *test;
> +
> +	if (nla_len(attr) != sizeof(*test))
> +		return -EINVAL;
> +
> +	test = nla_data(attr);
> +
> +	return br_mrp_start_test(br, test->ring_id, test->interval,
> +				 test->max_miss, test->period);
> +}
> +
> +int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
> +		 struct nlattr *attr, int cmd)
> +{
> +	struct nlattr *mrp;
> +	int rem, err;
> +
> +	nla_for_each_nested(mrp, attr, rem) {
> +		err = 0;
> +		switch (nla_type(mrp)) {
> +		case IFLA_BRIDGE_MRP_INSTANCE:
> +			err = br_mrp_parse_instance(br, mrp, cmd);
> +			if (err)
> +				return err;
> +			break;
> +		case IFLA_BRIDGE_MRP_PORT_STATE:
> +			err = br_mrp_parse_port_state(br, p, mrp);
> +			if (err)
> +				return err;
> +			break;
> +		case IFLA_BRIDGE_MRP_PORT_ROLE:
> +			err = br_mrp_parse_port_role(br, p, mrp);
> +			if (err)
> +				return err;
> +			break;
> +		case IFLA_BRIDGE_MRP_RING_STATE:
> +			err = br_mrp_parse_ring_state(br, mrp);
> +			if (err)
> +				return err;
> +			break;
> +		case IFLA_BRIDGE_MRP_RING_ROLE:
> +			err = br_mrp_parse_ring_role(br, mrp);
> +			if (err)
> +				return err;
> +			break;
> +		case IFLA_BRIDGE_MRP_START_TEST:
> +			err = br_mrp_parse_start_test(br, mrp);
> +			if (err)
> +				return err;
> +			break;
> +		}
> +	}
> +
> +	return 0;
> +}

All of the above can be implemented via nla_parse_nested() with a proper policy.
You don't have to manually check for the attribute size. Then your code follows
the netlink normal (e.g. check the bridge netlink handling) of:
 nla_parse_nested(tb)
 if (tb[attr])
    do_something_with(tb[attr])
 ...


> +
> +void br_mrp_port_open(struct net_device *dev, u8 loc)
> +{
> +	struct nlattr *af, *mrp;
> +	struct ifinfomsg *hdr;
> +	struct nlmsghdr *nlh;
> +	struct sk_buff *skb;
> +	int err = -ENOBUFS;
> +	struct net *net;
> +
> +	net = dev_net(dev);
> +
> +	skb = nlmsg_new(1024, GFP_ATOMIC);

Please add a function which calculates the size based on the attribute sizes.

> +	if (!skb)
> +		goto errout;
> +
> +	nlh = nlmsg_put(skb, 0, 0, RTM_NEWLINK, sizeof(*hdr), 0);
> +	if (!nlh)
> +		goto errout;
> +
> +	hdr = nlmsg_data(nlh);
> +	hdr->ifi_family = AF_BRIDGE;
> +	hdr->__ifi_pad = 0;
> +	hdr->ifi_type = dev->type;
> +	hdr->ifi_index = dev->ifindex;
> +	hdr->ifi_flags = dev_get_flags(dev);
> +	hdr->ifi_change = 0;
> +
> +	af = nla_nest_start_noflag(skb, IFLA_AF_SPEC);
> +	mrp = nla_nest_start_noflag(skb, IFLA_BRIDGE_MRP);
> +

These can return an error which has to be handled.

> +	nla_put_u32(skb, IFLA_BRIDGE_MRP_RING_OPEN, loc);
> +

Same for this.

> +	nla_nest_end(skb, mrp);
> +	nla_nest_end(skb, af);
> +	nlmsg_end(skb, nlh);
> +
> +	rtnl_notify(skb, net, 0, RTNLGRP_LINK, NULL, GFP_ATOMIC);
> +	return;
> +errout:
> +	rtnl_set_sk_err(net, RTNLGRP_LINK, err);
> +}
> +EXPORT_SYMBOL(br_mrp_port_open);
> 

