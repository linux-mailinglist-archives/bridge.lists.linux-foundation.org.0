Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E04FC4D4F75
	for <lists.bridge@lfdr.de>; Thu, 10 Mar 2022 17:40:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9107084770;
	Thu, 10 Mar 2022 16:40:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BNvrsv3H4JGr; Thu, 10 Mar 2022 16:40:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id E3BB984772;
	Thu, 10 Mar 2022 16:40:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A1D70C0073;
	Thu, 10 Mar 2022 16:40:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 19791C0012
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 16:40:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EEC0D84761
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 16:40:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PozCniCNVBKE for <bridge@lists.linux-foundation.org>;
 Thu, 10 Mar 2022 16:40:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com
 [IPv6:2a00:1450:4864:20::233])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1BAF384308
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 16:40:20 +0000 (UTC)
Received: by mail-lj1-x233.google.com with SMTP id l12so8498725ljh.12
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 08:40:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=YT9yTXEiAiBIN9Cn05pl2qQma8luZn1G2Do7oW9PCms=;
 b=bo8Lobd/EcTV1dG/y4cycmLtNX/KQExQLyQX+FjhrOYFmGtKa0yzwXeFJRqK1ufRFd
 Y3YAkwuANDJ3OnDNXPJkmPx3lxbpdLkQyRKvhjvo2G2YDGquPshCacr4VmfTt3eB8ngZ
 qAljb48cfBaC/vak1aNAmeTWnbLbXwW+2FJxkRQOZjvaNjP/VewOT4QQdFmUQKgDfL02
 xnvE2WI/IQAeyV5UKLr/qhf8uN1qhOclDQpUMBaQiZiDquMybutJVt2g0WOvbTt78LYg
 MEI4LRI8utkDMpq78tERn9Wc2s0F2JLKxaTobyneji9Sv+jI1Ckh0+4y7yqK81sh5XJF
 6TGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=YT9yTXEiAiBIN9Cn05pl2qQma8luZn1G2Do7oW9PCms=;
 b=2Z5bEa5u3qqlW+4xoGEHjbjXT0zam2nyXE1ZTr1FCCoUWNcJm81N8Meq7xJXRqe477
 DJlEy8xek+Szu1Cs1bU1t+SOr8CHDkedICaU3hXCOWgX3+0PnYKeqv4R4wSGILH+zG/Q
 SyRKB25I8/9q7Gjmx/tz05SijbhyM2S7DLs2IxTiKT8peKRMG536dHAL1JH5zy24cdJs
 yPqkoLhsx44YasyIhg2T6bwZMBdRhV03T1aElilEfGanRs0ldw/CfPxxEkuFWN97rSD0
 e+CtiIqY8FKk6XqCDAigHqYsGou5cWDMQLKo5BKE87hrpS4VwLwQVfkvD1CORBFK4ABf
 TNSw==
X-Gm-Message-State: AOAM532CUwMykH/wS5Xn0+1QoliKp3QnXzgWODTih7bumEoI8YzkZdOP
 GIl2AN3aEQmxKl7VaAADdy2rmWlfhA2Czw==
X-Google-Smtp-Source: ABdhPJyCPyXoh/r+enyGyAfvQ9z9FCZj0GZpV54qd0q1oAvS5PJszPwhO48e2FbGaAuhr7v1u0Ekjg==
X-Received: by 2002:a05:651c:555:b0:247:b105:ff91 with SMTP id
 q21-20020a05651c055500b00247b105ff91mr3579264ljp.482.1646930418093; 
 Thu, 10 Mar 2022 08:40:18 -0800 (PST)
Received: from wse-c0127 ([208.127.141.29]) by smtp.gmail.com with ESMTPSA id
 c23-20020a196557000000b004481befdc8bsm1058261lfj.161.2022.03.10.08.40.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 08:40:17 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <20220310160542.dihodbfxnexyjo2d@skbuf>
References: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
 <20220310142320.611738-4-schultz.hans+netdev@gmail.com>
 <20220310142836.m5onuelv4jej5gvs@skbuf> <865yolg8d7.fsf@gmail.com>
 <20220310150717.h7gaxamvzv47e5zc@skbuf> <86sfrpergs.fsf@gmail.com>
 <20220310160542.dihodbfxnexyjo2d@skbuf>
Date: Thu, 10 Mar 2022 17:40:15 +0100
Message-ID: <86lexhoj68.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 3/3] net: dsa: mv88e6xxx: mac-auth/MAB
 implementation
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

On tor, mar 10, 2022 at 18:05, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Thu, Mar 10, 2022 at 04:51:15PM +0100, Hans Schultz wrote:
>> On tor, mar 10, 2022 at 17:07, Vladimir Oltean <olteanv@gmail.com> wrote:
>> > On Thu, Mar 10, 2022 at 04:00:52PM +0100, Hans Schultz wrote:
>> >> >> +	brport = dsa_port_to_bridge_port(dp);
>> >> >
>> >> > Since this is threaded interrupt context, I suppose it could race with
>> >> > dsa_port_bridge_leave(). So it is best to check whether "brport" is NULL
>> >> > or not.
>> >> >
>> >> Would something like:
>> >> if (dsa_is_unused_port(chip->ds, port))
>> >>         return -ENODATA;
>> >> 
>> >> be appropriate and sufficient for that?
>> >
>> > static inline
>> > struct net_device *dsa_port_to_bridge_port(const struct dsa_port *dp)
>> > {
>> > 	if (!dp->bridge)
>> > 		return NULL;
>> >
>> > 	if (dp->lag)
>> > 		return dp->lag->dev;
>> > 	else if (dp->hsr_dev)
>> > 		return dp->hsr_dev;
>> >
>> > 	return dp->slave;
>> > }
>> >
>> > Notice the "dp->bridge" check. The assignments are in dsa_port_bridge_create()
>> > and in dsa_port_bridge_destroy(). These functions assume rtnl_mutex protection.
>> > The question was how do you serialize with that, and why do you assume
>> > that dsa_port_to_bridge_port() returns non-NULL.
>> >
>> > So no, dsa_is_unused_port() would do absolutely nothing to help.
>> 
>> I was thinking in indirect terms (dangerous I know :-).
>
> Sorry, I don't understand what you mean by "indirect terms". An "unused
> port" is one with 'status = "disabled";' in the device tree. I would
> expect that you don't need to handle FDB entries towards such a port!
>

Right!

> You have a port receiving traffic with an unknown {MAC SA, VID}.
> When the port is configured as locked by the bridge, this traffic will
> generate ATU miss interrupts. These will be handled in an interrupt
> thread that is scheduled to be handled some time in the future.
> In between the moment when the packet is received and the moment when
> the interrupt thread runs, a user could run "ip link set lan0 nomaster".
> Then the interrupt thread would notify the bridge about these entries,
> point during which a bridge port no longer exists => NULL pointer dereference.
> By taking the rtnl_lock() and then checking whether dsa_port_to_bridge_port()
> is NULL, you figure out whether the interrupt handler ran completely
> before dsa_port_bridge_leave(), or completely after dsa_port_bridge_leave().
>
>> 
>> But wrt the nl lock, I wonder when other threads could pull the carpet
>> away under this, and so I might have to wait till after the last call
>> (mv88e6xxx_g1_atu_loadpurge) to free the nl lock?
>
> That might make sense. It means: if the user runs "ip link set lan0 nomaster",
> wait until I've notified the bridge and installed the entry to my own
> ATU, so that they're in sync. Then, del_nbp() -> br_fdb_delete_by_port()
> would come in, find that entry notified by us (I think!) and remove it.
> If you call rtnl_unlock() too early, it might be possible that the ATU
> entry remains lingering (unless I'm missing some subtle implicit
> serialization based on mv88e6xxx_reg_lock() or similar).

I will go with releasing the lock after the last call. I think that
should be okay.
