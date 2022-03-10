Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC5A4D4CAB
	for <lists.bridge@lfdr.de>; Thu, 10 Mar 2022 16:14:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E608841BC;
	Thu, 10 Mar 2022 15:14:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J0dbQhd0Xx3K; Thu, 10 Mar 2022 15:14:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 1B9E684163;
	Thu, 10 Mar 2022 15:14:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E337DC0073;
	Thu, 10 Mar 2022 15:14:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 80CB1C000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 15:14:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 70000401C7
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 15:14:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bHmVJaIXC_LM for <bridge@lists.linux-foundation.org>;
 Thu, 10 Mar 2022 15:14:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com
 [IPv6:2a00:1450:4864:20::22c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5B69B4013D
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 15:14:37 +0000 (UTC)
Received: by mail-lj1-x22c.google.com with SMTP id s25so8185489lji.5
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 07:14:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=Eze/8M2gI0/1aPxBC8oNjaaWCvFby/x8ND3xWZra1Gk=;
 b=JDhd3TyE53QQTFNn518ewb1ExwOApdXXEJW1aDE5Be9Sn0zuMirJ8Zcd1A7MCvaWUq
 3XY1fjzMggkv1ldxzwzocSmv1scaP04XFE6RTGdib7C9HaN+7mtWgNMZRQPsZ240A67O
 r0KuwT9DXQgPlm+L8Hnn+lBh3z/Kuea3tYpzU94npVEKbM1IWMUdqk6ZKyM3jPHfxomn
 TuB1c4r/lDva+znWi2Pkte+YKJ4y1EYwGSE9HaFN2O1ViJIM1DNG0hpplTzWPYsjwhSb
 +zCLVnrLindrZjLE51fDCHSCnywUvQ2fbUi7INLA4x1UZ8t9+gngZ1w1In3Cwl1xYCFj
 WJmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Eze/8M2gI0/1aPxBC8oNjaaWCvFby/x8ND3xWZra1Gk=;
 b=AKvS6nXX1dK/PCYwSkm3eG7z9lIuQa0mu1DwXSuoHYxOz/iH3FZDrps2fn7NUau9Qm
 I3ATxNovqaD/0bMGIfOq97h5bEgWSXIsIl1dPcT1HPhcxG6uVNqbra1LNt8BOfAWhPAP
 rVChYf8pVoxde95ERKA6R71WaOMbK32ItrJYCLRK76DuM9aGW9DcljmcEaadp26TnVLL
 xnttbhqrXDr1nl1/6SOeBQBaWgFEIAck1VK7zAWUqKtH6QcLkGJVYAv64x/vcKgS2ACR
 CJBZyd36iAgRV9Q03g/EgWeQKsj875xTwR40dXPqrgXvUgDkmCJ0IAFWGHXCOSCpHTBJ
 8j8Q==
X-Gm-Message-State: AOAM530iTWZm3pJJv9DiL37zeUK5dZBkHuSPMpHXzlI49MPbQZLIQ9wB
 49YxWNET6m9nG7hoghbwJ1TvoDr2akLlQ+OCAHI=
X-Google-Smtp-Source: ABdhPJwnRxRsFwfExg2LFKi8X51nSOcL450NxvZfSsH2xnJVTTBvAShauyIOr0ArHxmnUAhRDccEyA==
X-Received: by 2002:a05:651c:2115:b0:246:2a10:acb8 with SMTP id
 a21-20020a05651c211500b002462a10acb8mr3386215ljq.345.1646925274899; 
 Thu, 10 Mar 2022 07:14:34 -0800 (PST)
Received: from wkz-x280 (h-212-85-90-115.A259.priv.bahnhof.se. [212.85.90.115])
 by smtp.gmail.com with ESMTPSA id
 c16-20020a056512105000b0044315cbf157sm1026257lfb.64.2022.03.10.07.14.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 07:14:34 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20220303222658.7ykn6grkkp6htm7a@skbuf>
References: <20220301100321.951175-1-tobias@waldekranz.com>
 <20220301100321.951175-11-tobias@waldekranz.com>
 <20220303222658.7ykn6grkkp6htm7a@skbuf>
Date: Thu, 10 Mar 2022 16:14:31 +0100
Message-ID: <87k0d1n8ko.fsf@waldekranz.com>
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
Subject: Re: [Bridge] [PATCH v2 net-next 10/10] net: dsa: mv88e6xxx: MST
	Offloading
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

On Fri, Mar 04, 2022 at 00:26, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Tue, Mar 01, 2022 at 11:03:21AM +0100, Tobias Waldekranz wrote:
>> Allocate a SID in the STU for each MSTID in use by a bridge and handle
>> the mapping of MSTIDs to VLANs using the SID field of each VTU entry.
>> 
>> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>> ---
>>  drivers/net/dsa/mv88e6xxx/chip.c | 178 +++++++++++++++++++++++++++++++
>>  drivers/net/dsa/mv88e6xxx/chip.h |  13 +++
>>  2 files changed, 191 insertions(+)
>> 
>> diff --git a/drivers/net/dsa/mv88e6xxx/chip.c b/drivers/net/dsa/mv88e6xxx/chip.c
>> index c14a62aa6a6c..4fb4ec1dff79 100644
>> --- a/drivers/net/dsa/mv88e6xxx/chip.c
>> +++ b/drivers/net/dsa/mv88e6xxx/chip.c
>> @@ -1818,6 +1818,137 @@ static int mv88e6xxx_stu_setup(struct mv88e6xxx_chip *chip)
>>  	return mv88e6xxx_stu_loadpurge(chip, &stu);
>>  }
>>  
>> +static int mv88e6xxx_sid_new(struct mv88e6xxx_chip *chip, u8 *sid)
>> +{
>> +	DECLARE_BITMAP(busy, MV88E6XXX_N_SID) = { 0 };
>> +	struct mv88e6xxx_mst *mst;
>> +
>> +	set_bit(0, busy);
>> +
>> +	list_for_each_entry(mst, &chip->msts, node) {
>> +		set_bit(mst->stu.sid, busy);
>> +	}
>> +
>> +	*sid = find_first_zero_bit(busy, MV88E6XXX_N_SID);
>> +
>> +	return (*sid >= mv88e6xxx_max_sid(chip)) ? -ENOSPC : 0;
>> +}
>> +
>> +static int mv88e6xxx_sid_put(struct mv88e6xxx_chip *chip, u8 sid)
>> +{
>> +	struct mv88e6xxx_mst *mst, *tmp;
>> +	int err = 0;
>> +
>> +	list_for_each_entry_safe(mst, tmp, &chip->msts, node) {
>> +		if (mst->stu.sid == sid) {
>> +			if (refcount_dec_and_test(&mst->refcnt)) {
>> +				mst->stu.valid = false;
>> +				err = mv88e6xxx_stu_loadpurge(chip, &mst->stu);
>
> It is interesting what to do if this fails. Possibly not this, because
> the entry remains in hardware but not in software.

True, I will let the error bubble up and keep the SW state in sync with
the hardware.

>> +				list_del(&mst->node);
>> +				kfree(mst);
>> +			}
>> +
>> +			return err;
>> +		}
>> +	}
>> +
>> +	return -ENOENT;
>> +}
>> +
>> +static int mv88e6xxx_sid_get(struct mv88e6xxx_chip *chip, struct net_device *br,
>> +			     u16 msti, u8 *sid)
>> +{
>> +	struct mv88e6xxx_mst *mst;
>> +	int err, i;
>> +
>> +	if (!br)
>> +		return 0;
>
> Is this condition possible?

Removing.

>> +
>> +	if (!mv88e6xxx_has_stu(chip))
>> +		return -EOPNOTSUPP;
>> +
>> +	list_for_each_entry(mst, &chip->msts, node) {
>> +		if (mst->br == br && mst->msti == msti) {
>> +			refcount_inc(&mst->refcnt);
>> +			*sid = mst->stu.sid;
>> +			return 0;
>> +		}
>> +	}
>> +
>> +	err = mv88e6xxx_sid_new(chip, sid);
>> +	if (err)
>> +		return err;
>> +
>> +	mst = kzalloc(sizeof(*mst), GFP_KERNEL);
>> +	if (!mst)
>> +		return -ENOMEM;
>
> This leaks the new SID.

I don't think so, the SID is just calculated based on what is in
chip->msts. However:

- The naming is bad. Will change.

>> +
>> +	INIT_LIST_HEAD(&mst->node);
>> +	refcount_set(&mst->refcnt, 1);
>> +	mst->br = br;
>> +	mst->msti = msti;
>> +	mst->stu.valid = true;
>> +	mst->stu.sid = *sid;
>> +
>> +	/* The bridge starts out all ports in the disabled state. But
>> +	 * a STU state of disabled means to go by the port-global
>> +	 * state. So we set all user port's initial state to blocking,
>> +	 * to match the bridge's behavior.
>> +	 */
>> +	for (i = 0; i < mv88e6xxx_num_ports(chip); i++)
>> +		mst->stu.state[i] = dsa_is_user_port(chip->ds, i) ?
>> +			MV88E6XXX_PORT_CTL0_STATE_BLOCKING :
>> +			MV88E6XXX_PORT_CTL0_STATE_DISABLED;
>> +
>> +	list_add_tail(&mst->node, &chip->msts);
>> +	return mv88e6xxx_stu_loadpurge(chip, &mst->stu);
>
> And this doesn't behave too well on failure (the MSTID exists in
> software but not in hardware).

Yes, fixing in v3.

>> +}
>> +
>> +static int mv88e6xxx_port_mst_state_set(struct dsa_switch *ds, int port,
>> +					const struct switchdev_mst_state *st)
>> +{
>> +	struct dsa_port *dp = dsa_to_port(ds, port);
>> +	struct mv88e6xxx_chip *chip = ds->priv;
>> +	struct mv88e6xxx_mst *mst;
>> +	u8 state;
>> +	int err;
>> +
>> +	if (!mv88e6xxx_has_stu(chip))
>> +		return -EOPNOTSUPP;
>> +
>> +	switch (st->state) {
>> +	case BR_STATE_DISABLED:
>> +	case BR_STATE_BLOCKING:
>> +	case BR_STATE_LISTENING:
>> +		state = MV88E6XXX_PORT_CTL0_STATE_BLOCKING;
>> +		break;
>> +	case BR_STATE_LEARNING:
>> +		state = MV88E6XXX_PORT_CTL0_STATE_LEARNING;
>> +		break;
>> +	case BR_STATE_FORWARDING:
>> +		state = MV88E6XXX_PORT_CTL0_STATE_FORWARDING;
>> +		break;
>> +	default:
>> +		return -EINVAL;
>> +	}
>> +
>> +	list_for_each_entry(mst, &chip->msts, node) {
>> +		if (mst->br == dsa_port_bridge_dev_get(dp) &&
>> +		    mst->msti == st->msti) {
>> +			if (mst->stu.state[port] == state)
>> +				return 0;
>> +
>> +			mst->stu.state[port] = state;
>> +			mv88e6xxx_reg_lock(chip);
>> +			err = mv88e6xxx_stu_loadpurge(chip, &mst->stu);
>> +			mv88e6xxx_reg_unlock(chip);
>> +			return err;
>> +		}
>> +	}
>> +
>> +	return -ENOENT;
>> +}
>> +
>>  static int mv88e6xxx_port_check_hw_vlan(struct dsa_switch *ds, int port,
>>  					u16 vid)
>>  {
>> @@ -2437,6 +2568,12 @@ static int mv88e6xxx_port_vlan_leave(struct mv88e6xxx_chip *chip,
>>  	if (err)
>>  		return err;
>>  
>> +	if (!vlan.valid && vlan.sid) {
>> +		err = mv88e6xxx_sid_put(chip, vlan.sid);
>> +		if (err)
>> +			return err;
>> +	}
>> +
>>  	return mv88e6xxx_g1_atu_remove(chip, vlan.fid, port, false);
>>  }
>>  
>> @@ -2482,6 +2619,44 @@ static int mv88e6xxx_port_vlan_del(struct dsa_switch *ds, int port,
>>  	return err;
>>  }
>>  
>> +static int mv88e6xxx_vlan_msti_set(struct dsa_switch *ds,
>> +				   const struct switchdev_attr *attr)
>> +{
>> +	const struct switchdev_vlan_attr *vattr = &attr->u.vlan_attr;
>> +	struct mv88e6xxx_chip *chip = ds->priv;
>> +	struct mv88e6xxx_vtu_entry vlan;
>> +	u8 new_sid;
>> +	int err;
>> +
>> +	mv88e6xxx_reg_lock(chip);
>> +
>> +	err = mv88e6xxx_vtu_get(chip, vattr->vid, &vlan);
>> +	if (err)
>> +		goto unlock;
>> +
>> +	if (!vlan.valid) {
>> +		err = -EINVAL;
>> +		goto unlock;
>> +	}
>> +
>> +	err = mv88e6xxx_sid_get(chip, attr->orig_dev, vattr->msti, &new_sid);
>> +	if (err)
>> +		goto unlock;
>> +
>> +	if (vlan.sid) {
>> +		err = mv88e6xxx_sid_put(chip, vlan.sid);
>> +		if (err)
>> +			goto unlock;
>> +	}
>> +
>> +	vlan.sid = new_sid;
>> +	err = mv88e6xxx_vtu_loadpurge(chip, &vlan);
>
> Maybe you could move mv88e6xxx_sid_put() after this succeeds?

Yep. Also made sure to avoid needless updates of the VTU entry if it
already belonged to the correct SID.

Thanks for the great review!
