Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E42A44D4DB9
	for <lists.bridge@lfdr.de>; Thu, 10 Mar 2022 16:57:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B5DB611A5;
	Thu, 10 Mar 2022 15:57:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B4PPWO0SJjF1; Thu, 10 Mar 2022 15:57:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 981EB611C2;
	Thu, 10 Mar 2022 15:57:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6F7F6C0073;
	Thu, 10 Mar 2022 15:57:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C5D4EC000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 15:57:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A2B6B40585
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 15:57:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dEQx8JGvlRkf for <bridge@lists.linux-foundation.org>;
 Thu, 10 Mar 2022 15:57:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2973840364
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 15:57:46 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id 3so10216719lfr.7
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 07:57:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=Yte1PcxR3IB6p9pVv52DRShh5fK9LuowQ3Jlc6YjsCQ=;
 b=C6UQuceqS2AHZkY0KgGYZYiFSR8FhqrNmAC6ZLrGbpHMkKZwGr6+HU6v9iU9Sx8Yjr
 uFRhNmkb8Km9Z9jQkm/yQtC+6GmGyH8/DNNJrdZ3ibcRtdD8ENH34nJLoJzHN+zPLBWd
 1ExDOccl8+li7AevW4GKXz3fr1GnsR6fQCdTXGKOCLDMlqBnrjdAIPhWWX6l+aMJA4Io
 HLlzrcEzY/kerIckHY6vhX6rU4CaqHleo7Aj8UA7U/mJRKgiDK+aXlvj0jKTwqTJedxB
 rBqBe2Ev9z9/0FnRscxQCbYpIbWNaQNaBaSKf1IfXOL7OWynumrH/UsAc9ueq5X/l79U
 91yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Yte1PcxR3IB6p9pVv52DRShh5fK9LuowQ3Jlc6YjsCQ=;
 b=OP27r3TZ2Kav39HYvk1kWccpyBbfGO68k61HHJN6c+salSzBsogAx7qUXQW3QfYIkq
 /eIIRasfVJtEvpCr7+ZvYXxDMvzgjeO5pged2+QPV4oq7yr32Z1NHaHDSvtVlhi2uIXg
 DDBuYV5Eq7L9aPQL6ZWbm5jg8pwCe/lX6DJLyDeMYqeD0EISzdVJvOSwoOUWJ43vrfQO
 I3G/X7g4AY5XWYCsew/Cowp1Jw1DufERPD94G4w6U8na4+clvCUuVsTBcQ93/Vz7Gnw6
 eX0qxhOc0/OHcPPAHQ9Q4Hl8idsY8BVVyTzXQHby2L7FsFDe9eWS0J106FwlqxUs26Qk
 E6kg==
X-Gm-Message-State: AOAM5328WYDn+XA2Dwfe/NGc4qa07g/yzt+ptFUlmwQhaUdoHPLuYXIN
 lLSYud8Oot9tS14VUUsNvfWWHg21Ylf6gw==
X-Google-Smtp-Source: ABdhPJy1Wc5ApBeGGCymY6YFIeIOamnWYFh6LbYUKH+RUuVrwwTx8p/q+PP2IBIHEL/LYOFrNK4qSA==
X-Received: by 2002:a05:6512:108a:b0:448:6519:3bc1 with SMTP id
 j10-20020a056512108a00b0044865193bc1mr1926583lfg.679.1646927863931; 
 Thu, 10 Mar 2022 07:57:43 -0800 (PST)
Received: from wse-c0127 ([208.127.141.29]) by smtp.gmail.com with ESMTPSA id
 o17-20020ac24351000000b004437b082fc6sm1043273lfl.229.2022.03.10.07.57.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 07:57:43 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <20220310142836.m5onuelv4jej5gvs@skbuf>
References: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
 <20220310142320.611738-4-schultz.hans+netdev@gmail.com>
 <20220310142836.m5onuelv4jej5gvs@skbuf>
Date: Thu, 10 Mar 2022 16:57:41 +0100
Message-ID: <86pmmter62.fsf@gmail.com>
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

On tor, mar 10, 2022 at 16:28, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Thu, Mar 10, 2022 at 03:23:20PM +0100, Hans Schultz wrote:
>> This implementation for the Marvell mv88e6xxx chip series, is
>> based on handling ATU miss violations occurring when packets
>> ingress on a port that is locked. The mac address triggering
>> the ATU miss violation is communicated through switchdev to
>> the bridge module, which adds a fdb entry with the fdb locked
>> flag set.
>> Note: The locked port must have learning enabled for the ATU
>> miss violation to occur.
>> 
>> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
>> ---
>>  drivers/net/dsa/mv88e6xxx/Makefile            |  1 +
>>  drivers/net/dsa/mv88e6xxx/chip.c              | 10 +--
>>  drivers/net/dsa/mv88e6xxx/chip.h              |  5 ++
>>  drivers/net/dsa/mv88e6xxx/global1.h           |  1 +
>>  drivers/net/dsa/mv88e6xxx/global1_atu.c       | 29 +++++++-
>>  .../net/dsa/mv88e6xxx/mv88e6xxx_switchdev.c   | 67 +++++++++++++++++++
>>  .../net/dsa/mv88e6xxx/mv88e6xxx_switchdev.h   | 20 ++++++
>>  drivers/net/dsa/mv88e6xxx/port.c              | 11 +++
>>  drivers/net/dsa/mv88e6xxx/port.h              |  1 +
>>  9 files changed, 138 insertions(+), 7 deletions(-)
>>  create mode 100644 drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.c
>>  create mode 100644 drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.h
>> 
>> diff --git a/drivers/net/dsa/mv88e6xxx/Makefile b/drivers/net/dsa/mv88e6xxx/Makefile
>> index c8eca2b6f959..3ca57709730d 100644
>> --- a/drivers/net/dsa/mv88e6xxx/Makefile
>> +++ b/drivers/net/dsa/mv88e6xxx/Makefile
>> @@ -15,3 +15,4 @@ mv88e6xxx-objs += port_hidden.o
>>  mv88e6xxx-$(CONFIG_NET_DSA_MV88E6XXX_PTP) += ptp.o
>>  mv88e6xxx-objs += serdes.o
>>  mv88e6xxx-objs += smi.o
>> +mv88e6xxx-objs += mv88e6xxx_switchdev.o
>> \ No newline at end of file
>> diff --git a/drivers/net/dsa/mv88e6xxx/chip.c b/drivers/net/dsa/mv88e6xxx/chip.c
>> index 84b90fc36c58..e1b6bd738085 100644
>> --- a/drivers/net/dsa/mv88e6xxx/chip.c
>> +++ b/drivers/net/dsa/mv88e6xxx/chip.c
>> @@ -1714,11 +1714,11 @@ static int mv88e6xxx_vtu_get(struct mv88e6xxx_chip *chip, u16 vid,
>>  	return err;
>>  }
>>  
>> -static int mv88e6xxx_vtu_walk(struct mv88e6xxx_chip *chip,
>> -			      int (*cb)(struct mv88e6xxx_chip *chip,
>> -					const struct mv88e6xxx_vtu_entry *entry,
>> -					void *priv),
>> -			      void *priv)
>> +int mv88e6xxx_vtu_walk(struct mv88e6xxx_chip *chip,
>> +		       int (*cb)(struct mv88e6xxx_chip *chip,
>> +				 const struct mv88e6xxx_vtu_entry *entry,
>> +				 void *priv),
>> +		       void *priv)
>>  {
>>  	struct mv88e6xxx_vtu_entry entry = {
>>  		.vid = mv88e6xxx_max_vid(chip),
>> diff --git a/drivers/net/dsa/mv88e6xxx/chip.h b/drivers/net/dsa/mv88e6xxx/chip.h
>> index 30b92a265613..64e8fc470fdf 100644
>> --- a/drivers/net/dsa/mv88e6xxx/chip.h
>> +++ b/drivers/net/dsa/mv88e6xxx/chip.h
>> @@ -763,6 +763,11 @@ static inline void mv88e6xxx_reg_unlock(struct mv88e6xxx_chip *chip)
>>  	mutex_unlock(&chip->reg_lock);
>>  }
>>  
>> +int mv88e6xxx_vtu_walk(struct mv88e6xxx_chip *chip,
>> +		       int (*cb)(struct mv88e6xxx_chip *chip,
>> +				 const struct mv88e6xxx_vtu_entry *entry,
>> +				 void *priv),
>> +		       void *priv);
>>  int mv88e6xxx_fid_map(struct mv88e6xxx_chip *chip, unsigned long *bitmap);
>>  
>>  #endif /* _MV88E6XXX_CHIP_H */
>> diff --git a/drivers/net/dsa/mv88e6xxx/global1.h b/drivers/net/dsa/mv88e6xxx/global1.h
>> index 2c1607c858a1..729cc0610d9a 100644
>> --- a/drivers/net/dsa/mv88e6xxx/global1.h
>> +++ b/drivers/net/dsa/mv88e6xxx/global1.h
>> @@ -136,6 +136,7 @@
>>  #define MV88E6XXX_G1_ATU_DATA_TRUNK				0x8000
>>  #define MV88E6XXX_G1_ATU_DATA_TRUNK_ID_MASK			0x00f0
>>  #define MV88E6XXX_G1_ATU_DATA_PORT_VECTOR_MASK			0x3ff0
>> +#define MV88E6XXX_G1_ATU_DATA_PORT_VECTOR_NO_EGRESS		0x0000
>>  #define MV88E6XXX_G1_ATU_DATA_STATE_MASK			0x000f
>>  #define MV88E6XXX_G1_ATU_DATA_STATE_UC_UNUSED			0x0000
>>  #define MV88E6XXX_G1_ATU_DATA_STATE_UC_AGE_1_OLDEST		0x0001
>> diff --git a/drivers/net/dsa/mv88e6xxx/global1_atu.c b/drivers/net/dsa/mv88e6xxx/global1_atu.c
>> index 40bd67a5c8e9..afa54fe8667e 100644
>> --- a/drivers/net/dsa/mv88e6xxx/global1_atu.c
>> +++ b/drivers/net/dsa/mv88e6xxx/global1_atu.c
>> @@ -12,6 +12,8 @@
>>  
>>  #include "chip.h"
>>  #include "global1.h"
>> +#include "port.h"
>> +#include "mv88e6xxx_switchdev.h"
>>  
>>  /* Offset 0x01: ATU FID Register */
>>  
>> @@ -114,6 +116,18 @@ static int mv88e6xxx_g1_atu_op_wait(struct mv88e6xxx_chip *chip)
>>  	return mv88e6xxx_g1_wait_bit(chip, MV88E6XXX_G1_ATU_OP, bit, 0);
>>  }
>>  
>> +static int mv88e6xxx_g1_read_atu_violation(struct mv88e6xxx_chip *chip)
>> +{
>> +	int err;
>> +
>> +	err = mv88e6xxx_g1_write(chip, MV88E6XXX_G1_ATU_OP,
>> +				 MV88E6XXX_G1_ATU_OP_BUSY | MV88E6XXX_G1_ATU_OP_GET_CLR_VIOLATION);
>> +	if (err)
>> +		return err;
>> +
>> +	return mv88e6xxx_g1_atu_op_wait(chip);
>> +}
>> +
>>  static int mv88e6xxx_g1_atu_op(struct mv88e6xxx_chip *chip, u16 fid, u16 op)
>>  {
>>  	u16 val;
>> @@ -356,11 +370,11 @@ static irqreturn_t mv88e6xxx_g1_atu_prob_irq_thread_fn(int irq, void *dev_id)
>>  	int spid;
>>  	int err;
>>  	u16 val;
>> +	u16 fid;
>>  
>>  	mv88e6xxx_reg_lock(chip);
>>  
>> -	err = mv88e6xxx_g1_atu_op(chip, 0,
>> -				  MV88E6XXX_G1_ATU_OP_GET_CLR_VIOLATION);
>> +	err = mv88e6xxx_g1_read_atu_violation(chip);
>>  	if (err)
>>  		goto out;
>>  
>> @@ -368,6 +382,10 @@ static irqreturn_t mv88e6xxx_g1_atu_prob_irq_thread_fn(int irq, void *dev_id)
>>  	if (err)
>>  		goto out;
>>  
>> +	err = mv88e6xxx_g1_read(chip, MV88E6352_G1_ATU_FID, &fid);
>> +	if (err)
>> +		goto out;
>> +
>>  	err = mv88e6xxx_g1_atu_data_read(chip, &entry);
>>  	if (err)
>>  		goto out;
>> @@ -396,6 +414,13 @@ static irqreturn_t mv88e6xxx_g1_atu_prob_irq_thread_fn(int irq, void *dev_id)
>>  				    "ATU miss violation for %pM portvec %x spid %d\n",
>>  				    entry.mac, entry.portvec, spid);
>>  		chip->ports[spid].atu_miss_violation++;
>> +		if (mv88e6xxx_port_is_locked(chip, chip->ports[spid].port))
>> +			err = mv88e6xxx_switchdev_handle_atu_miss_violation(chip,
>> +									    chip->ports[spid].port,
>> +									    &entry,
>> +									    fid);
>
> Do we want to suppress the ATU miss violation warnings if we're going to
> notify the bridge, or is it better to keep them for some reason?
> My logic is that they're part of normal operation, so suppressing makes
> sense.
>

Only one issue is that the ATU miss violations would not be reported on
ports that are not locked, while the bridge will not be notified either.

>> +		if (err)
>> +			goto out;
>>  	}
>>  
>>  	if (val & MV88E6XXX_G1_ATU_OP_FULL_VIOLATION) {
>> diff --git a/drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.c b/drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.c
>> new file mode 100644
>> index 000000000000..e0ca452b6f86
>> --- /dev/null
>> +++ b/drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.c
>> @@ -0,0 +1,67 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later
>> +/*
>> + * mv88e6xxx_switchdev.c
>> + *
>> + *	Authors:
>> + *	Hans J. Schultz		<hans.schultz@westermo.com>
>> + *
>> + */
>> +
>> +#include <net/switchdev.h>
>> +#include "chip.h"
>> +#include "global1.h"
>> +
>> +struct mv88e6xxx_fid_search_ctx {
>> +	u16 fid_search;
>> +	u16 vid_found;
>> +};
>> +
>> +static int mv88e6xxx_find_vid_on_matching_fid(struct mv88e6xxx_chip *chip,
>> +					      const struct mv88e6xxx_vtu_entry *entry,
>> +					      void *priv)
>> +{
>> +	struct mv88e6xxx_fid_search_ctx *ctx = priv;
>> +
>> +	if (ctx->fid_search == entry->fid) {
>> +		ctx->vid_found = entry->vid;
>> +		return 1;
>> +	}
>> +	return 0;
>> +}
>> +
>> +int mv88e6xxx_switchdev_handle_atu_miss_violation(struct mv88e6xxx_chip *chip,
>> +						  int port,
>> +						  struct mv88e6xxx_atu_entry *entry,
>> +						  u16 fid)
>> +{
>> +	struct switchdev_notifier_fdb_info info = {
>> +		.addr = entry->mac,
>> +		.vid = 0,
>> +		.added_by_user = false,
>> +		.is_local = false,
>> +		.offloaded = true,
>> +		.locked = true,
>> +	};
>> +	struct mv88e6xxx_fid_search_ctx ctx;
>> +	struct netlink_ext_ack *extack;
>> +	struct net_device *brport;
>> +	struct dsa_port *dp;
>> +	int err;
>> +
>> +	ctx.fid_search = fid;
>> +	err = mv88e6xxx_vtu_walk(chip, mv88e6xxx_find_vid_on_matching_fid, &ctx);
>> +	if (err < 0)
>> +		return err;
>> +	if (err == 1)
>> +		info.vid = ctx.vid_found;
>> +	else
>> +		return -ENODATA;
>> +
>> +	dp = dsa_to_port(chip->ds, port);
>> +	brport = dsa_port_to_bridge_port(dp);
>
> Since this is threaded interrupt context, I suppose it could race with
> dsa_port_bridge_leave(). So it is best to check whether "brport" is NULL
> or not.
>
> Speaking of races with dsa_port_bridge_leave().. does SWITCHDEV_FDB_ADD_TO_BRIDGE
> not require rtnl_lock?
>
>> +	err = call_switchdev_notifiers(SWITCHDEV_FDB_ADD_TO_BRIDGE, brport, &info.info, extack);
>
> It is buggy to pass an uninitialized on-stack extack, just pass NULL if
> there's no one to consume it.
>
> Alternatively, if the bridge produces a valid extack message for errors
> in this case (I haven't checked), it may be more useful to manually
> print the extack._msg to the kernel log - see dsa_switch_sync_vlan_filtering()
> for an example.
>
> I am a bit uncomfortable having every driver implement this ad-hoc and
> potentially have a gazillion subtle bugs like these, could we have a
> common function exported by DSA that deals with SWITCHDEV_FDB_ADD_TO_BRIDGE?
>
>> +	if (err)
>> +		return err;
>> +	entry->portvec = MV88E6XXX_G1_ATU_DATA_PORT_VECTOR_NO_EGRESS;
>> +	return mv88e6xxx_g1_atu_loadpurge(chip, fid, entry);
>> +}
>> diff --git a/drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.h b/drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.h
>> new file mode 100644
>> index 000000000000..127f3098f745
>> --- /dev/null
>> +++ b/drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.h
>> @@ -0,0 +1,20 @@
>> +/* SPDX-License-Identifier: GPL-2.0-or-later
>> + *
>> + * mv88e6xxx_switchdev.h
>> + *
>> + *	Authors:
>> + *	Hans J. Schultz		<hans.schultz@westermo.com>
>> + *
>> + */
>> +
>> +#ifndef DRIVERS_NET_DSA_MV88E6XXX_MV88E6XXX_SWITCHDEV_H_
>> +#define DRIVERS_NET_DSA_MV88E6XXX_MV88E6XXX_SWITCHDEV_H_
>> +
>> +#include <net/switchdev.h>
>> +
>> +int mv88e6xxx_switchdev_handle_atu_miss_violation(struct mv88e6xxx_chip *chip,
>> +						  int port,
>> +						  struct mv88e6xxx_atu_entry *entry,
>> +						  u16 fid);
>> +
>> +#endif /* DRIVERS_NET_DSA_MV88E6XXX_MV88E6XXX_SWITCHDEV_H_ */
>> diff --git a/drivers/net/dsa/mv88e6xxx/port.c b/drivers/net/dsa/mv88e6xxx/port.c
>> index 795b3128768f..6b375b0caa2c 100644
>> --- a/drivers/net/dsa/mv88e6xxx/port.c
>> +++ b/drivers/net/dsa/mv88e6xxx/port.c
>> @@ -1239,6 +1239,17 @@ int mv88e6xxx_port_set_mirror(struct mv88e6xxx_chip *chip, int port,
>>  	return err;
>>  }
>>  
>> +bool mv88e6xxx_port_is_locked(struct mv88e6xxx_chip *chip, int port)
>> +{
>> +	u16 reg;
>> +
>> +	if (mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_CTL0, &reg))
>> +		return false;
>> +	if (!(reg & MV88E6XXX_PORT_CTL0_SA_FILT_DROP_ON_LOCK))
>> +		return false;
>> +	return true;
>> +}
>> +
>>  int mv88e6xxx_port_set_lock(struct mv88e6xxx_chip *chip, int port,
>>  			    bool locked)
>>  {
>> diff --git a/drivers/net/dsa/mv88e6xxx/port.h b/drivers/net/dsa/mv88e6xxx/port.h
>> index e0a705d82019..09ea8f1615bb 100644
>> --- a/drivers/net/dsa/mv88e6xxx/port.h
>> +++ b/drivers/net/dsa/mv88e6xxx/port.h
>> @@ -374,6 +374,7 @@ int mv88e6xxx_port_set_fid(struct mv88e6xxx_chip *chip, int port, u16 fid);
>>  int mv88e6xxx_port_get_pvid(struct mv88e6xxx_chip *chip, int port, u16 *pvid);
>>  int mv88e6xxx_port_set_pvid(struct mv88e6xxx_chip *chip, int port, u16 pvid);
>>  
>> +bool mv88e6xxx_port_is_locked(struct mv88e6xxx_chip *chip, int port);
>>  int mv88e6xxx_port_set_lock(struct mv88e6xxx_chip *chip, int port,
>>  			    bool locked);
>>  
>> -- 
>> 2.30.2
>> 
