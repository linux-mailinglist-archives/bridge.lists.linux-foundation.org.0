Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A31F4DCED5
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 20:27:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9BE178480F;
	Thu, 17 Mar 2022 19:27:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MYgdoVipcAOe; Thu, 17 Mar 2022 19:27:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id E134681491;
	Thu, 17 Mar 2022 19:27:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 89EFBC0082;
	Thu, 17 Mar 2022 19:27:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DD31CC000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 19:27:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B7FA28141C
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 19:27:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xc6eFtmrYgUQ for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 19:27:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E89918134B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 19:27:05 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id u23so3240866ejt.1
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 12:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=/7iAhcR4tM55eEx0OphxTplV89HWokZKexzro1tRyR4=;
 b=B8XIvyZykfMaM6OPqWJsED+v5Dwn3xRPjvNFplB7XHHqcf+b+PsDawQkL/LFEncHXO
 7BsmBBjN6XsztRPgkTlTEVyciryk7kfyMykxuI0t9DoxYnt6rqJSySkzGa499pRV5xQl
 2K0JH+lIFThsnhGGADoEf9LSYYhuI6P0EY+ZAWnVI1Aoj9oMpsxKN0wTqYppiQyz2G8a
 /y+0qKS+hz8wZ9WtRe3aGXVnubOQHNZdyZiZpxwrIKXgeyYwZePhUlo/rH6Yb2RuPjCl
 +aXjTlyMvs9HnFgqVZk8dr50w/0ScT/W1K8nPH8qAzkUX5hAtwUQCGZ6EDlKWyUlrOTI
 htjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/7iAhcR4tM55eEx0OphxTplV89HWokZKexzro1tRyR4=;
 b=5VyC5U+3MxB0enYMj+/NgqlR+kfSLRibBya5vAJXBDUHLePJUVqnC038au8CZARNZv
 9AdoXRvHzE/kwnxrVoPkaUwaj7l+L6CU5xhUDmBTue6rqNXJuxeM9h17natN4L+Mq0c5
 VXsLormFVIig/cGEqOsB09SLqYEKe7DSct88Yindr5HcLu0snjQJhR5owrxigry2usts
 6bhXF/grfEZyJD26/GFy9CcBlOIzPlvNKfp+oA5K4EhC4sFNB4kszbnTIItyTVFmckq9
 ZdzMXtt0ZFSTBoUaKjaZvvWECEf+pslxSb7DHlQ67/Nz8Cr9oWz9uWX3qPbaAlYmQL/V
 1SeQ==
X-Gm-Message-State: AOAM531KBUzAObiZZjYYPUWSXiVD0AfQDWwaTt05YJSlgT2Rwb5mTDiy
 tiijOtpEqw3jZbQVJiQca7o=
X-Google-Smtp-Source: ABdhPJwPhRlaqdL9Yr6GpyMIvyoLXWBJgeNDVCRYVIiBTwwE4iUBPuPMJFdJZW6dfMgWExHCpvYwhA==
X-Received: by 2002:a17:906:dc81:b0:6df:8348:d201 with SMTP id
 cs1-20020a170906dc8100b006df8348d201mr5832495ejc.113.1647545223798; 
 Thu, 17 Mar 2022 12:27:03 -0700 (PDT)
Received: from skbuf ([188.26.57.45]) by smtp.gmail.com with ESMTPSA id
 m3-20020a17090679c300b006cf9ce53354sm2782790ejo.190.2022.03.17.12.27.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Mar 2022 12:27:03 -0700 (PDT)
Date: Thu, 17 Mar 2022 21:27:01 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <20220317192701.vskynomfmnciv732@skbuf>
References: <20220317093902.1305816-1-schultz.hans+netdev@gmail.com>
 <20220317093902.1305816-4-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220317093902.1305816-4-schultz.hans+netdev@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Ido Schimmel <idosch@nvidia.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 3/4] net: dsa: mv88e6xxx:
 mac-auth/MAB implementation
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

On Thu, Mar 17, 2022 at 10:39:01AM +0100, Hans Schultz wrote:
> +int mv88e6xxx_switchdev_handle_atu_miss_violation(struct mv88e6xxx_chip *chip,
> +						  int port,
> +						  struct mv88e6xxx_atu_entry *entry,
> +						  u16 fid)
> +{
> +	struct switchdev_notifier_fdb_info info = {
> +		.addr = entry->mac,
> +		.vid = 0,
> +		.added_by_user = false,
> +		.is_local = false,
> +		.offloaded = true,
> +		.locked = true,
> +	};
> +	struct mv88e6xxx_fid_search_ctx ctx;
> +	struct netlink_ext_ack *extack;
> +	struct net_device *brport;
> +	struct dsa_port *dp;
> +	int err;
> +
> +	ctx.fid_search = fid;
> +	err = mv88e6xxx_vtu_walk(chip, mv88e6xxx_find_vid_on_matching_fid, &ctx);
> +	if (err < 0)
> +		return err;
> +	if (err == 1)
> +		info.vid = ctx.vid_found;
> +	else
> +		return -ENODATA;
> +
> +	dp = dsa_to_port(chip->ds, port);
> +	brport = dsa_port_to_bridge_port(dp);
> +	if (!brport)
> +		return -ENODEV;

dsa_port_to_bridge_port() must be under rtnl_lock().

On a different CPU rather than the one servicing the interrupt, the
rtnl_lock is held exactly by the user space command that triggers the
deletion of the bridge port.

The interrupt thread runs, calls dsa_port_to_bridge_port(), and finds
a non-NULL brport, because the bridge is still doing something else in
del_nbp(), it hasn't yet reached the netdev_upper_dev_unlink() function
which will trigger dsa_port_bridge_leave() -> dsa_port_bridge_destroy().

So you continue bravely, and you call rtnl_lock() below. This will block
until the "ip" command finishes. When you acquire the rtnl_lock however,
the brport is no longer valid, because you have waited for the user
space command to finish.

Best case, the bridge port deletion command was "ip link set lan0 nomaster".
So "brport" is "lan0", you call SWITCHDEV_FDB_ADD_TO_BRIDGE, the bridge
doesn't recognize it as a bridge port, says "huh, weird" and carries on.

Worst case, "brport" was an offloaded LAG device which was a bridge
port, and when it got destroyed by "ip link del bond0", the bridge port
got destroyed too. So at this stage, you have a use-after-free because
bond0 no longer exists.

> +
> +	rtnl_lock();
> +	err = call_switchdev_notifiers(SWITCHDEV_FDB_ADD_TO_BRIDGE, brport, &info.info, extack);
> +	if (err)
> +		goto out;
> +	entry->portvec = MV88E6XXX_G1_ATU_DATA_PORT_VECTOR_NO_EGRESS;
> +	err = mv88e6xxx_g1_atu_loadpurge(chip, fid, entry);
> +
> +out:
> +	rtnl_unlock();
> +	return err;
> +}
