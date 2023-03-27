Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6906CA9C6
	for <lists.bridge@lfdr.de>; Mon, 27 Mar 2023 18:00:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA3BC4092C;
	Mon, 27 Mar 2023 16:00:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA3BC4092C
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=Rggi0Md2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MdEjhyTB8ROA; Mon, 27 Mar 2023 16:00:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id CD067409E4;
	Mon, 27 Mar 2023 16:00:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD067409E4
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7209EC007F;
	Mon, 27 Mar 2023 16:00:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 74707C007A
 for <bridge@lists.linux-foundation.org>; Mon, 27 Mar 2023 16:00:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 391734092C
 for <bridge@lists.linux-foundation.org>; Mon, 27 Mar 2023 16:00:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 391734092C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KYlmf-m2FFP9 for <bridge@lists.linux-foundation.org>;
 Mon, 27 Mar 2023 16:00:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 20E854092B
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 20E854092B
 for <bridge@lists.linux-foundation.org>; Mon, 27 Mar 2023 16:00:31 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id f22so4746081plr.0
 for <bridge@lists.linux-foundation.org>; Mon, 27 Mar 2023 09:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679932830;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=cQM0d8N3ey8wKoxPg/KHHUAGDUaZlSpT4hCWm1bIuNQ=;
 b=Rggi0Md2110RpNFGa0P3wsEHmxvU81M3yeTIAOtvOXisj4v9LprR0CrMthEZrV32e1
 M/8YtzepHzMUkLlvOEujXBCmdZXfYBCOVZ2RXFr56231OHDocq7oA52EgJiXboR3OeTk
 lhzdE1l4PTEHadZb4zI8cnP6W9ZMQkGyrzZTz8dTkXEFepbaicmStgCdrVg/3MPrwtC0
 VqOuWOZnw5BzNPPJ573D58iV02sa3C/fLYjbV8xcxpG4+0CyhYMKw0OKiCM8hHwlUAjI
 LeZ9D5994F2qOWawmNDny+Y5xMxI8KvLKTeZDakTHny/iq3YwHZZpo02iSuGWso/whqD
 HN5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679932830;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cQM0d8N3ey8wKoxPg/KHHUAGDUaZlSpT4hCWm1bIuNQ=;
 b=3gqWvqeyWmtELNSQ7FK81B9eUhfk9EobNZYvUAMvQwDhdTPhNOXdINThYE/n1l5zWi
 d5jfWL3CqxeVAKy65g6SE955ksQ209ZwyoObp5bu2sEsdfDmZliOtCGKXpfpu0V6sEX2
 P7z1cVc2sp+T/s455tgTM9qUnKuarVfLOsa1n8wzmB+Rlzs9v3DrkGduKlCeQmvTYj/H
 NFbRdvMyOHLw7muMyUNJ9k8nGely2HZO3oGQIv6MhQ9Q6jjyD6h32TIY9sEGB8101UzH
 O9stGZCUveS8u67eF6yse1TmA1y1Qn5//Po70kDwgV0VVM7tN7jLUry+9wjcPaTRAfRe
 KfJw==
X-Gm-Message-State: AO0yUKVdDW0q96bxsK2cqFpLwoCHtq2x6qf5BTxs6IRK6FZlRibXXiON
 0Q/NEGdZfDLf5hPSe86ChyQ=
X-Google-Smtp-Source: AK7set+qSF5b/VIEJkiJCwzshpgszJ/3NObsXzlCnvLlK7UGPX/xAWkGoHJ5HRudXeHxOYXgAmW+Nw==
X-Received: by 2002:a05:6a20:bca8:b0:da:e44f:5284 with SMTP id
 fx40-20020a056a20bca800b000dae44f5284mr8801308pzb.30.1679932830335; 
 Mon, 27 Mar 2023 09:00:30 -0700 (PDT)
Received: from skbuf ([188.27.184.189]) by smtp.gmail.com with ESMTPSA id
 e25-20020aa78c59000000b0058837da69edsm19252637pfd.128.2023.03.27.09.00.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Mar 2023 09:00:29 -0700 (PDT)
Date: Mon, 27 Mar 2023 19:00:09 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <netdev@kapio-technology.com>
Message-ID: <20230327160009.bdswnalizdv2u77z@skbuf>
References: <20230318141010.513424-1-netdev@kapio-technology.com>
 <20230318141010.513424-3-netdev@kapio-technology.com>
 <20230327115206.jk5q5l753aoelwus@skbuf>
 <87355qb48h.fsf@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87355qb48h.fsf@kapio-technology.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>,
 =?utf-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>,
 Christian Marangi <ansuelsmth@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET SWITCH DRIVER"
 <UNGLinuxDriver@microchip.com>,
 "open list:RENESAS RZ/N1 A5PSW SWITCH DRIVER"
 <linux-renesas-soc@vger.kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 2/6] net: dsa: propagate flags down
 towards drivers
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

On Mon, Mar 27, 2023 at 05:31:26PM +0200, Hans Schultz wrote:
> On Mon, Mar 27, 2023 at 14:52, Vladimir Oltean <olteanv@gmail.com> wrote:
> >
> > By the way, there is a behavior change here.
> >
> > Before:
> >
> > $ ip link add br0 type bridge && ip link set br0 up
> > $ ip link set swp0 master br0 && ip link set swp0 up
> > $ bridge fdb add dev swp0 00:01:02:03:04:05 master dynamic
> > [   70.010181] mscc_felix 0000:00:00.5: felix_fdb_add: port 0 addr 00:01:02:03:04:05 vid 0
> > [   70.019105] mscc_felix 0000:00:00.5: felix_fdb_add: port 0 addr 00:01:02:03:04:05 vid 1
> > .... 5 minutes later
> > [  371.686935] mscc_felix 0000:00:00.5: felix_fdb_del: port 0 addr 00:01:02:03:04:05 vid 1
> > [  371.695449] mscc_felix 0000:00:00.5: felix_fdb_del: port 0 addr 00:01:02:03:04:05 vid 0
> > $ bridge fdb | grep 00:01:02:03:04:05
> >
> > After:
> >
> > $ ip link add br0 type bridge && ip link set br0 up
> > $ ip link set swp0 master br0 && ip link set swp0 up
> > $ bridge fdb add dev swp0 00:01:02:03:04:05 master dynamic
> > [  222.071492] mscc_felix 0000:00:00.5: felix_fdb_add: port 0 addr 00:01:02:03:04:05 vid 0 flags 0x1
> > [  222.081154] mscc_felix 0000:00:00.5: felix_fdb_add: port 0 addr 00:01:02:03:04:05 vid 1 flags 0x1
> > .... 5 minutes later
> > $ bridge fdb | grep 00:01:02:03:04:05
> > 00:01:02:03:04:05 dev swp0 vlan 1 offload master br0 stale
> > 00:01:02:03:04:05 dev swp0 offload master br0 stale
> > 00:01:02:03:04:05 dev swp0 vlan 1 self
> > 00:01:02:03:04:05 dev swp0 self
> >
> > As you can see, the behavior is not identical, and it made more sense
> > before.
> 
> I see this is Felix Ocelot and there is no changes in this patchset that
> affects Felix Ocelot. Thus I am quite sure the results will be the same
> without this patchset, ergo it must be because of another patch. All
> that is done here in the DSA layer is to pass on an extra field and add
> an extra check that will always pass in the case of this flag.

If mv88e6xxx is all you have, you can still sanity-check the equivalent
effect of your patch set to other drivers by simply not acting upon the
"flags" argument in mv88e6xxx_port_fdb_add()/mv88e6xxx_port_fdb_del(),
and disabling the logic to treat Age Out interrupts. Then you should be
able to notice exactly the behavior change I am talking about.

In your own commit message, it says:

Author: Hans J. Schultz <netdev@kapio-technology.com>

    net: bridge: ensure FDB offloaded flag is handled as needed

    Since user added entries in the bridge FDB will get the BR_FDB_OFFLOADED
                                                        ~~~~~~~~~~~~~~~~~~~~
    flag set, we do not want the bridge to age those entries and we want the
              ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    entries to be deleted in the bridge upon an SWITCHDEV_FDB_DEL_TO_BRIDGE
                                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                        existing drivers do not emit this
    event.

    Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index e69a872bfc1d..b0c23a72bc76 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -537,6 +537,7 @@ void br_fdb_cleanup(struct work_struct *work)
 		unsigned long this_timer = f->updated + delay;
 
 		if (test_bit(BR_FDB_STATIC, &f->flags) ||
+		    test_bit(BR_FDB_OFFLOADED, &f->flags) ||
 		    test_bit(BR_FDB_ADDED_BY_EXT_LEARN, &f->flags)) {
 			if (test_bit(BR_FDB_NOTIFY, &f->flags)) {
 				if (time_after(this_timer, now))
@@ -1465,7 +1466,9 @@ int br_fdb_external_learn_del(struct net_bridge *br, struct net_bridge_port *p,
 	spin_lock_bh(&br->hash_lock);
 
 	fdb = br_fdb_find(br, addr, vid);
-	if (fdb && test_bit(BR_FDB_ADDED_BY_EXT_LEARN, &fdb->flags))
+	if (fdb &&
+	    (test_bit(BR_FDB_ADDED_BY_EXT_LEARN, &fdb->flags) ||
+	     test_bit(BR_FDB_OFFLOADED, &fdb->flags)))
 		fdb_delete(br, fdb, swdev_notify);
 	else
 		err = -ENOENT;


A reasonable question you could ask yourself is: why do my BR_FDB_OFFLOADED
entries have this flag in the software bridge in the first place?
Did I add code for it? Is it because there is some difference between
mv88e6xxx and ocelot/felix, or is it because dsa_fdb_offload_notify()
gets called in both cases from generic code just the same?

And if dsa_fdb_offload_notify() gets called in both cases just the same,
but no other driver except for mv88e6xxx emits the SWITCHDEV_FDB_DEL_TO_BRIDGE
which you've patched the bridge to expect in this series, then what exactly
is surprising in the fact that offloaded and dynamic FDB entries now become
stale, but are not removed from the software bridge as they were before?
