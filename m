Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7674A60618D
	for <lists.bridge@lfdr.de>; Thu, 20 Oct 2022 15:25:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EDED74026F;
	Thu, 20 Oct 2022 13:25:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EDED74026F
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=hswcP9z4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O9Mog95G1BZR; Thu, 20 Oct 2022 13:25:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id BEA314013F;
	Thu, 20 Oct 2022 13:25:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BEA314013F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7D718C0078;
	Thu, 20 Oct 2022 13:25:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1927AC002D
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 13:25:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D0BC58432F
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 13:25:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D0BC58432F
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=hswcP9z4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z-KeXBcQYirW for <bridge@lists.linux-foundation.org>;
 Thu, 20 Oct 2022 13:25:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30F0D8430A
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 30F0D8430A
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 13:25:45 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id q19so29885950edd.10
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 06:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=MIQbIsCXagkIWp6OQOXf/pk6LODllhevise+dRbp3NU=;
 b=hswcP9z4CxFmTub0Z9GFU0awq72EsftWFWsnB6Ft0mxE3n04GhCy7hxQ3SaQ9QHCV6
 aWZ9AwU1mJSKG9RaYr4y8t/GIIQj72Hl11rYaxMi5wkNPNpn2O6sb4WslHOLl9Xmgj5S
 +VmIZGphzo2cbUemZSLc4QR0DC049Lyla+XFd8Ha4KDwLiNYdXTNfNSN6siaEI1O0U24
 dfkNSxdUcUJ11RpgFs0RD1tJijZsQVy75LhFPz7Z6i2R8MRmhCjFyizb0jWZOmdd/eZS
 3DQq2y46/JEVyLoQ8RMtWy3mM69rzH4H2HC7VBBtcsISRUa4yg58e2STCLgLU9MQjQey
 tQhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=MIQbIsCXagkIWp6OQOXf/pk6LODllhevise+dRbp3NU=;
 b=lQWF94HhlARl0NUNJGvJTO9qe1l6mGGjOTmEB4s9wwyjAgVBUNiicO6NL/sktYNpwr
 Z3M2qbsHx9gqNS7xqaKnVl78gOYujoA1X8vu+zYx+QzDSH7GZVpSiUg3vrlL/3VxzJyL
 eaTlMotSyajpv8su6YWeqPcMUbL2jw5LEGitJ2W2guyAeW9JDw2Yadew2ekVEk8/ARgW
 +fSV1oPc9Jn2e49frM+Muv5fVydcs67ifPucUnl+mfvLrFyi6dFYET5m06ZMOb8tkC/L
 0rKluA/sdQvNanVMU6L5tJb5CT/EL/qSOR3vD+8kYy9r1cUsbooqfn9+hLdMUPcPFSud
 8AXQ==
X-Gm-Message-State: ACrzQf0bITuLGdNjMqocbpvbd1LzW+UY85kxwpJ4rnl9jKLfDy4hmqwl
 orNlb+g4yxPoCR++4SoWAxo=
X-Google-Smtp-Source: AMsMyM4Jm6SyuC0Kh412QvxhF05Ma5LkdqCnHyybuUNdBmvhwnWSKdUXZisteTLtjJqTB3ZtOG6XHw==
X-Received: by 2002:a05:6402:3547:b0:45d:1578:9424 with SMTP id
 f7-20020a056402354700b0045d15789424mr11925527edd.281.1666272343068; 
 Thu, 20 Oct 2022 06:25:43 -0700 (PDT)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 k17-20020aa7c391000000b00456cbd8c65bsm12187179edq.6.2022.10.20.06.25.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Oct 2022 06:25:42 -0700 (PDT)
Date: Thu, 20 Oct 2022 16:25:38 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: "Hans J. Schultz" <netdev@kapio-technology.com>
Message-ID: <20221020132538.reirrskemcjwih2m@skbuf>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-11-netdev@kapio-technology.com>
 <20221018165619.134535-11-netdev@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221018165619.134535-11-netdev@kapio-technology.com>
 <20221018165619.134535-11-netdev@kapio-technology.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Joachim Wiberg <troglobit@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Amit Cohen <amcohen@nvidia.com>, Christian Marangi <ansuelsmth@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Schultz <schultz.hans@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 Petr Machata <petrm@nvidia.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Florent Fourcot <florent.fourcot@wifirst.fr>,
 UNGLinuxDriver@microchip.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v8 net-next 10/12] net: dsa: mv88e6xxx:
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

On Tue, Oct 18, 2022 at 06:56:17PM +0200, Hans J. Schultz wrote:
> This implementation for the Marvell mv88e6xxx chip series,
> is based on handling ATU miss violations occurring when packets
> ingress on a port that is locked. The mac address triggering
> the ATU miss violation will be added to the ATU with a zero-DPV,
> and is then communicated through switchdev to the bridge module,
> which adds a fdb entry with the fdb locked flag set. The entry
> is kept according to the bridges ageing time, thus simulating a
> dynamic entry.
> 
> Additionally the driver will set the sticky and masked flags, as
> the driver does not support roaming and forwarding from any port
> to a locked entry.
> 
> As this is essentially a form of CPU based learning, the amount
> of locked entries will be limited by a hardcoded value for now,
> so as to prevent DOS attacks.
> 
> Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
> ---
>  drivers/net/dsa/mv88e6xxx/Makefile      |   1 +
>  drivers/net/dsa/mv88e6xxx/chip.c        |  76 +++++--
>  drivers/net/dsa/mv88e6xxx/chip.h        |  19 ++
>  drivers/net/dsa/mv88e6xxx/global1.h     |   1 +
>  drivers/net/dsa/mv88e6xxx/global1_atu.c |  12 +-
>  drivers/net/dsa/mv88e6xxx/port.c        |  15 +-
>  drivers/net/dsa/mv88e6xxx/port.h        |   6 +
>  drivers/net/dsa/mv88e6xxx/switchdev.c   | 284 ++++++++++++++++++++++++
>  drivers/net/dsa/mv88e6xxx/switchdev.h   |  37 +++
>  9 files changed, 429 insertions(+), 22 deletions(-)
>  create mode 100644 drivers/net/dsa/mv88e6xxx/switchdev.c
>  create mode 100644 drivers/net/dsa/mv88e6xxx/switchdev.h
> 
> diff --git a/drivers/net/dsa/mv88e6xxx/Makefile b/drivers/net/dsa/mv88e6xxx/Makefile
> index c8eca2b6f959..be903a983780 100644
> --- a/drivers/net/dsa/mv88e6xxx/Makefile
> +++ b/drivers/net/dsa/mv88e6xxx/Makefile
> @@ -15,3 +15,4 @@ mv88e6xxx-objs += port_hidden.o
>  mv88e6xxx-$(CONFIG_NET_DSA_MV88E6XXX_PTP) += ptp.o
>  mv88e6xxx-objs += serdes.o
>  mv88e6xxx-objs += smi.o
> +mv88e6xxx-objs += switchdev.o
> diff --git a/drivers/net/dsa/mv88e6xxx/chip.c b/drivers/net/dsa/mv88e6xxx/chip.c
> index 352121cce77e..71843fe87f77 100644
> --- a/drivers/net/dsa/mv88e6xxx/chip.c
> +++ b/drivers/net/dsa/mv88e6xxx/chip.c
> @@ -42,6 +42,7 @@
>  #include "ptp.h"
>  #include "serdes.h"
>  #include "smi.h"
> +#include "switchdev.h"
>  
>  static void assert_reg_lock(struct mv88e6xxx_chip *chip)
>  {
> @@ -924,6 +925,13 @@ static void mv88e6xxx_mac_link_down(struct dsa_switch *ds, int port,
>  	if (err)
>  		dev_err(chip->dev,
>  			"p%d: failed to force MAC link down\n", port);
> +	else
> +		if (mv88e6xxx_port_is_locked(chip, port)) {
> +			err = mv88e6xxx_atu_locked_entry_flush(ds, port);
> +			if (err)
> +				dev_err(chip->dev,
> +					"p%d: failed to clear locked entries\n", port);
> +		}

This would not have been needed if dsa_port_set_state() would have
called dsa_port_fast_age().

Currently it only does that if dp->learning is true. From previous
conversations I get the idea that with MAB, port learning will be false.
But I don't understand why; isn't MAB CPU-assisted learning? I'm looking
at the ocelot hardware support for this and I think it could be
implemented using a similar mechanism, but I certainly don't want to add
more workarounds such as this in other drivers.

Are there any other ways to implement MAB other than through CPU
assisted learning?

We could add one more dp->mab flag which tracks the "mab" brport flag,
and extend dsa_port_set_state() to also call dsa_port_fast_age() in that
case, but I want to make sure there isn't something extremely obvious
I'm missing about the "learning" flag.

>  }
>  
>  static void mv88e6xxx_mac_link_up(struct dsa_switch *ds, int port,
> @@ -1690,6 +1698,13 @@ static void mv88e6xxx_port_fast_age(struct dsa_switch *ds, int port)
>  	struct mv88e6xxx_chip *chip = ds->priv;
>  	int err;
>  
> +	if (mv88e6xxx_port_is_locked(chip, port)) {
> +		err = mv88e6xxx_atu_locked_entry_flush(ds, port);
> +		if (err)
> +			dev_err(chip->ds->dev, "p%d: failed to clear locked entries: %d\n",
> +				port, err);
> +	}
> +
>  	mv88e6xxx_reg_lock(chip);
>  	err = mv88e6xxx_port_fast_age_fid(chip, port, 0);
>  	mv88e6xxx_reg_unlock(chip);
> @@ -1726,11 +1741,11 @@ static int mv88e6xxx_vtu_get(struct mv88e6xxx_chip *chip, u16 vid,
>  	return err;
>  }
>  
> -static int mv88e6xxx_vtu_walk(struct mv88e6xxx_chip *chip,
> -			      int (*cb)(struct mv88e6xxx_chip *chip,
> -					const struct mv88e6xxx_vtu_entry *entry,
> -					void *priv),
> -			      void *priv)
> +int mv88e6xxx_vtu_walk(struct mv88e6xxx_chip *chip,
> +		       int (*cb)(struct mv88e6xxx_chip *chip,
> +				 const struct mv88e6xxx_vtu_entry *entry,
> +				 void *priv),
> +		       void *priv)
>  {
>  	struct mv88e6xxx_vtu_entry entry = {
>  		.vid = mv88e6xxx_max_vid(chip),
> @@ -2731,6 +2746,9 @@ static int mv88e6xxx_port_fdb_add(struct dsa_switch *ds, int port,
>  	if (fdb_flags)
>  		return 0;
>  
> +	if (mv88e6xxx_port_is_locked(chip, port))
> +		mv88e6xxx_atu_locked_entry_find_purge(ds, port, addr, vid);
> +
>  	mv88e6xxx_reg_lock(chip);
>  	err = mv88e6xxx_port_db_load_purge(chip, port, addr, vid,
>  					   MV88E6XXX_G1_ATU_DATA_STATE_UC_STATIC);
> @@ -2744,16 +2762,21 @@ static int mv88e6xxx_port_fdb_del(struct dsa_switch *ds, int port,
>  				  u16 fdb_flags, struct dsa_db db)
>  {
>  	struct mv88e6xxx_chip *chip = ds->priv;
> -	int err;
> +	bool locked_found = false;
> +	int err = 0;
>  
>  	/* Ignore entries with flags set */
>  	if (fdb_flags)
>  		return 0;
>  
> -	mv88e6xxx_reg_lock(chip);
> -	err = mv88e6xxx_port_db_load_purge(chip, port, addr, vid, 0);
> -	mv88e6xxx_reg_unlock(chip);
> +	if (mv88e6xxx_port_is_locked(chip, port))
> +		locked_found = mv88e6xxx_atu_locked_entry_find_purge(ds, port, addr, vid);
>  
> +	if (!locked_found) {
> +		mv88e6xxx_reg_lock(chip);
> +		err = mv88e6xxx_port_db_load_purge(chip, port, addr, vid, 0);
> +		mv88e6xxx_reg_unlock(chip);
> +	}
>  	return err;
>  }
>  
> @@ -3849,11 +3872,18 @@ static int mv88e6xxx_setup(struct dsa_switch *ds)
>  
>  static int mv88e6xxx_port_setup(struct dsa_switch *ds, int port)
>  {
> -	return mv88e6xxx_setup_devlink_regions_port(ds, port);
> +	int err;
> +
> +	err = mv88e6xxx_setup_devlink_regions_port(ds, port);
> +	if (!err)
> +		return mv88e6xxx_init_violation_handler(ds, port);
> +
> +	return err;
>  }
>  
>  static void mv88e6xxx_port_teardown(struct dsa_switch *ds, int port)
>  {
> +	mv88e6xxx_teardown_violation_handler(ds, port);
>  	mv88e6xxx_teardown_devlink_regions_port(ds, port);
>  }
>  
> @@ -6528,7 +6558,7 @@ static int mv88e6xxx_port_pre_bridge_flags(struct dsa_switch *ds, int port,
>  	const struct mv88e6xxx_ops *ops;
>  
>  	if (flags.mask & ~(BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD |
> -			   BR_BCAST_FLOOD | BR_PORT_LOCKED))
> +			   BR_BCAST_FLOOD | BR_PORT_LOCKED | BR_PORT_MAB))
>  		return -EINVAL;
>  
>  	ops = chip->info->ops;
> @@ -6549,13 +6579,13 @@ static int mv88e6xxx_port_bridge_flags(struct dsa_switch *ds, int port,
>  	struct mv88e6xxx_chip *chip = ds->priv;
>  	int err = -EOPNOTSUPP;
>  
> -	mv88e6xxx_reg_lock(chip);
> -

Separate commit which changes the locking?

>  	if (flags.mask & BR_LEARNING) {
>  		bool learning = !!(flags.val & BR_LEARNING);
>  		u16 pav = learning ? (1 << port) : 0;
>  
> +		mv88e6xxx_reg_lock(chip);
>  		err = mv88e6xxx_port_set_assoc_vector(chip, port, pav);
> +		mv88e6xxx_reg_unlock(chip);
>  		if (err)
>  			goto out;
>  	}
> @@ -6563,8 +6593,10 @@ static int mv88e6xxx_port_bridge_flags(struct dsa_switch *ds, int port,
>  	if (flags.mask & BR_FLOOD) {
>  		bool unicast = !!(flags.val & BR_FLOOD);
>  
> +		mv88e6xxx_reg_lock(chip);
>  		err = chip->info->ops->port_set_ucast_flood(chip, port,
>  							    unicast);
> +		mv88e6xxx_reg_unlock(chip);
>  		if (err)
>  			goto out;
>  	}
> @@ -6572,8 +6604,10 @@ static int mv88e6xxx_port_bridge_flags(struct dsa_switch *ds, int port,
>  	if (flags.mask & BR_MCAST_FLOOD) {
>  		bool multicast = !!(flags.val & BR_MCAST_FLOOD);
>  
> +		mv88e6xxx_reg_lock(chip);
>  		err = chip->info->ops->port_set_mcast_flood(chip, port,
>  							    multicast);
> +		mv88e6xxx_reg_unlock(chip);
>  		if (err)
>  			goto out;
>  	}
> @@ -6581,20 +6615,34 @@ static int mv88e6xxx_port_bridge_flags(struct dsa_switch *ds, int port,
>  	if (flags.mask & BR_BCAST_FLOOD) {
>  		bool broadcast = !!(flags.val & BR_BCAST_FLOOD);
>  
> +		mv88e6xxx_reg_lock(chip);
>  		err = mv88e6xxx_port_broadcast_sync(chip, port, broadcast);
> +		mv88e6xxx_reg_unlock(chip);
>  		if (err)
>  			goto out;
>  	}
>  
> +	if (flags.mask & BR_PORT_MAB) {
> +		chip->ports[port].mab = !!(flags.val & BR_PORT_MAB);
> +
> +		if (!chip->ports[port].mab)
> +			err = mv88e6xxx_atu_locked_entry_flush(ds, port);
> +		else
> +			err = 0;

Again, dsa_port_fast_age() is also called when dp->learning is turned
off in dsa_port_bridge_flags(). I don't want to see the mv88e6xxx driver
doing this manually.

> +	}
> +
>  	if (flags.mask & BR_PORT_LOCKED) {
>  		bool locked = !!(flags.val & BR_PORT_LOCKED);
>  
> +		mv88e6xxx_reg_lock(chip);
>  		err = mv88e6xxx_port_set_lock(chip, port, locked);
> +		mv88e6xxx_reg_unlock(chip);
>  		if (err)
>  			goto out;
> +
> +		chip->ports[port].locked = locked;
>  	}
>  out:
> -	mv88e6xxx_reg_unlock(chip);
>  
>  	return err;
>  }
> diff --git a/drivers/net/dsa/mv88e6xxx/chip.h b/drivers/net/dsa/mv88e6xxx/chip.h
> index e693154cf803..180fbcf596fa 100644
> --- a/drivers/net/dsa/mv88e6xxx/chip.h
> +++ b/drivers/net/dsa/mv88e6xxx/chip.h
> @@ -280,6 +280,16 @@ struct mv88e6xxx_port {
>  	unsigned int serdes_irq;
>  	char serdes_irq_name[64];
>  	struct devlink_region *region;
> +
> +	/* Locked port and MacAuth control flags */
> +	bool locked;
> +	bool mab;
> +
> +	/* List and maintenance of ATU locked entries */
> +	struct mutex ale_list_lock;
> +	struct list_head ale_list;
> +	struct delayed_work ale_work;
> +	int ale_cnt;
>  };
>  
>  enum mv88e6xxx_region_id {
> @@ -399,6 +409,9 @@ struct mv88e6xxx_chip {
>  	int egress_dest_port;
>  	int ingress_dest_port;
>  
> +	/* Keep the register written age time for easy access */
> +	u8 age_time;
> +
>  	/* Per-port timestamping resources. */
>  	struct mv88e6xxx_port_hwtstamp port_hwtstamp[DSA_MAX_PORTS];
>  
> @@ -802,6 +815,12 @@ static inline void mv88e6xxx_reg_unlock(struct mv88e6xxx_chip *chip)
>  	mutex_unlock(&chip->reg_lock);
>  }
>  
> +int mv88e6xxx_vtu_walk(struct mv88e6xxx_chip *chip,
> +		       int (*cb)(struct mv88e6xxx_chip *chip,
> +				 const struct mv88e6xxx_vtu_entry *entry,
> +				 void *priv),
> +		       void *priv);
> +
>  int mv88e6xxx_fid_map(struct mv88e6xxx_chip *chip, unsigned long *bitmap);
>  
>  #endif /* _MV88E6XXX_CHIP_H */
> diff --git a/drivers/net/dsa/mv88e6xxx/global1.h b/drivers/net/dsa/mv88e6xxx/global1.h
> index 65958b2a0d3a..503fbf216670 100644
> --- a/drivers/net/dsa/mv88e6xxx/global1.h
> +++ b/drivers/net/dsa/mv88e6xxx/global1.h
> @@ -136,6 +136,7 @@
>  #define MV88E6XXX_G1_ATU_DATA_TRUNK				0x8000
>  #define MV88E6XXX_G1_ATU_DATA_TRUNK_ID_MASK			0x00f0
>  #define MV88E6XXX_G1_ATU_DATA_PORT_VECTOR_MASK			0x3ff0
> +#define MV88E6XXX_G1_ATU_DATA_PORT_VECTOR_NO_EGRESS		0x0000
>  #define MV88E6XXX_G1_ATU_DATA_STATE_MASK			0x000f
>  #define MV88E6XXX_G1_ATU_DATA_STATE_UC_UNUSED			0x0000
>  #define MV88E6XXX_G1_ATU_DATA_STATE_UC_AGE_1_OLDEST		0x0001
> diff --git a/drivers/net/dsa/mv88e6xxx/global1_atu.c b/drivers/net/dsa/mv88e6xxx/global1_atu.c
> index d9dfa1159cde..67907cd00b87 100644
> --- a/drivers/net/dsa/mv88e6xxx/global1_atu.c
> +++ b/drivers/net/dsa/mv88e6xxx/global1_atu.c
> @@ -12,6 +12,8 @@
>  
>  #include "chip.h"
>  #include "global1.h"
> +#include "port.h"
> +#include "switchdev.h"
>  
>  /* Offset 0x01: ATU FID Register */
>  
> @@ -54,6 +56,7 @@ int mv88e6xxx_g1_atu_set_age_time(struct mv88e6xxx_chip *chip,
>  
>  	/* Round to nearest multiple of coeff */
>  	age_time = (msecs + coeff / 2) / coeff;
> +	chip->age_time = age_time;
>  
>  	err = mv88e6xxx_g1_read(chip, MV88E6XXX_G1_ATU_CTL, &val);
>  	if (err)
> @@ -426,6 +429,8 @@ static irqreturn_t mv88e6xxx_g1_atu_prob_irq_thread_fn(int irq, void *dev_id)
>  	if (err)
>  		goto out;
>  
> +	mv88e6xxx_reg_unlock(chip);
> +
>  	spid = entry.state;
>  
>  	if (val & MV88E6XXX_G1_ATU_OP_AGE_OUT_VIOLATION) {
> @@ -446,6 +451,12 @@ static irqreturn_t mv88e6xxx_g1_atu_prob_irq_thread_fn(int irq, void *dev_id)
>  				    "ATU miss violation for %pM portvec %x spid %d\n",
>  				    entry.mac, entry.portvec, spid);
>  		chip->ports[spid].atu_miss_violation++;
> +
> +		if (fid && chip->ports[spid].mab)
> +			err = mv88e6xxx_handle_violation(chip, spid, &entry, fid,
> +							 MV88E6XXX_G1_ATU_OP_MISS_VIOLATION);
> +		if (err)
> +			goto out;
>  	}
>  
>  	if (val & MV88E6XXX_G1_ATU_OP_FULL_VIOLATION) {
> @@ -454,7 +465,6 @@ static irqreturn_t mv88e6xxx_g1_atu_prob_irq_thread_fn(int irq, void *dev_id)
>  				    entry.mac, entry.portvec, spid);
>  		chip->ports[spid].atu_full_violation++;
>  	}
> -	mv88e6xxx_reg_unlock(chip);
>  
>  	return IRQ_HANDLED;
>  
> diff --git a/drivers/net/dsa/mv88e6xxx/port.c b/drivers/net/dsa/mv88e6xxx/port.c
> index 5c4195c635b0..67e457ce67ae 100644
> --- a/drivers/net/dsa/mv88e6xxx/port.c
> +++ b/drivers/net/dsa/mv88e6xxx/port.c
> @@ -14,9 +14,11 @@
>  #include <linux/phylink.h>
>  
>  #include "chip.h"
> +#include "global1.h"
>  #include "global2.h"
>  #include "port.h"
>  #include "serdes.h"
> +#include "switchdev.h"
>  
>  int mv88e6xxx_port_read(struct mv88e6xxx_chip *chip, int port, int reg,
>  			u16 *val)
> @@ -1240,13 +1242,12 @@ int mv88e6xxx_port_set_lock(struct mv88e6xxx_chip *chip, int port,
>  	if (err)
>  		return err;
>  
> -	err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_ASSOC_VECTOR, &reg);
> -	if (err)
> -		return err;
> -
> -	reg &= ~MV88E6XXX_PORT_ASSOC_VECTOR_LOCKED_PORT;
> -	if (locked)
> -		reg |= MV88E6XXX_PORT_ASSOC_VECTOR_LOCKED_PORT;
> +	reg = 0;
> +	if (locked) {
> +		reg = (1 << port);
> +		reg |= MV88E6XXX_PORT_ASSOC_VECTOR_IGNORE_WRONG |
> +			MV88E6XXX_PORT_ASSOC_VECTOR_LOCKED_PORT;
> +	}
>  
>  	return mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_ASSOC_VECTOR, reg);
>  }
> diff --git a/drivers/net/dsa/mv88e6xxx/port.h b/drivers/net/dsa/mv88e6xxx/port.h
> index cb04243f37c1..9475bc6e95a2 100644
> --- a/drivers/net/dsa/mv88e6xxx/port.h
> +++ b/drivers/net/dsa/mv88e6xxx/port.h
> @@ -231,6 +231,7 @@
>  #define MV88E6XXX_PORT_ASSOC_VECTOR_LOCKED_PORT		0x2000
>  #define MV88E6XXX_PORT_ASSOC_VECTOR_IGNORE_WRONG	0x1000
>  #define MV88E6XXX_PORT_ASSOC_VECTOR_REFRESH_LOCKED	0x0800
> +#define MV88E6XXX_PORT_ASSOC_VECTOR_PAV_MASK		0x07ff
>  
>  /* Offset 0x0C: Port ATU Control */
>  #define MV88E6XXX_PORT_ATU_CTL		0x0c
> @@ -375,6 +376,11 @@ int mv88e6xxx_port_set_pvid(struct mv88e6xxx_chip *chip, int port, u16 pvid);
>  int mv88e6xxx_port_set_lock(struct mv88e6xxx_chip *chip, int port,
>  			    bool locked);
>  
> +static inline bool mv88e6xxx_port_is_locked(struct mv88e6xxx_chip *chip, int port)
> +{
> +	return chip->ports[port].locked;
> +}
> +
>  int mv88e6xxx_port_set_8021q_mode(struct mv88e6xxx_chip *chip, int port,
>  				  u16 mode);
>  int mv88e6095_port_tag_remap(struct mv88e6xxx_chip *chip, int port);
> diff --git a/drivers/net/dsa/mv88e6xxx/switchdev.c b/drivers/net/dsa/mv88e6xxx/switchdev.c
> new file mode 100644
> index 000000000000..cd332a10fad5
> --- /dev/null
> +++ b/drivers/net/dsa/mv88e6xxx/switchdev.c
> @@ -0,0 +1,284 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * switchdev.c
> + *
> + *	Authors:
> + *	Hans J. Schultz		<hans.schultz@westermo.com>
> + *
> + */
> +
> +#include <net/switchdev.h>
> +#include <linux/list.h>
> +#include "chip.h"
> +#include "global1.h"
> +#include "switchdev.h"
> +
> +static void mv88e6xxx_atu_locked_entry_purge(struct mv88e6xxx_atu_locked_entry *ale,
> +					     bool notify, bool take_nl_lock)
> +{
> +	struct switchdev_notifier_fdb_info info = {
> +		.addr = ale->mac,
> +		.vid = ale->vid,
> +		.locked = true,
> +		.offloaded = true,
> +	};
> +	struct mv88e6xxx_atu_entry entry;
> +	struct net_device *brport;
> +	struct dsa_port *dp;
> +
> +	entry.portvec = MV88E6XXX_G1_ATU_DATA_PORT_VECTOR_NO_EGRESS;
> +	entry.state = MV88E6XXX_G1_ATU_DATA_STATE_UC_UNUSED;
> +	entry.trunk = false;
> +	ether_addr_copy(entry.mac, ale->mac);
> +
> +	mv88e6xxx_reg_lock(ale->chip);
> +	mv88e6xxx_g1_atu_loadpurge(ale->chip, ale->fid, &entry);
> +	mv88e6xxx_reg_unlock(ale->chip);
> +
> +	dp = dsa_to_port(ale->chip->ds, ale->port);
> +
> +	if (notify) {
> +		if (take_nl_lock)
> +			rtnl_lock();

Is this tested with lockdep? I see the function is called with other
locks held (p->ale_list_lock). Isn't there a lock inversion anywhere?
Locks always need to be taken in the same order, and rtnl_lock is a
pretty high level lock, not exactly the kind you could take just like
that.

> +		brport = dsa_port_to_bridge_port(dp);
> +
> +		if (brport) {
> +			call_switchdev_notifiers(SWITCHDEV_FDB_DEL_TO_BRIDGE,
> +						 brport, &info.info, NULL);
> +		} else {
> +			dev_err(ale->chip->dev, "No bridge port for dsa port belonging to port %d\n",
> +				ale->port);
> +		}
> +		if (take_nl_lock)
> +			rtnl_unlock();
> +	}
> +
> +	list_del(&ale->list);
> +	kfree(ale);
> +}
