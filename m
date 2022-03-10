Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF4D4D4CBF
	for <lists.bridge@lfdr.de>; Thu, 10 Mar 2022 16:25:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E02A60D6F;
	Thu, 10 Mar 2022 15:25:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lWzPtQazwT9l; Thu, 10 Mar 2022 15:25:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id C153F6102F;
	Thu, 10 Mar 2022 15:25:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6430EC0073;
	Thu, 10 Mar 2022 15:25:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A9074C000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 15:25:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 824EA8424B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 15:25:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O2c417hpZwgN for <bridge@lists.linux-foundation.org>;
 Thu, 10 Mar 2022 15:25:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 73D80841BC
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 15:25:51 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id d10so12825415eje.10
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 07:25:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=hyr8lchvSxJvVZvNNPRmAWrg1/xZg5k7PwIJtfWhQPA=;
 b=bB7/5s/t/KzBLjcRGi2a9yGaVZ4RKGv+dQSLbu4MBPn2IvdV6nEbbtK+IJEVEUhFrU
 AEQWAVL3khsmCLwMf/oY50KBGMhO3I/P4yeEqz1MAOY2jvDFMxiGncvs8dmVgqH8IOh6
 Q9vKmIyt8Ece8Ho2qaJ5DKEhdjtnUGbnEQVe4+sf5JKK2ccoFbV6tzCDVOBhdgTcwzy+
 9at2DIXGe3+rklhwUjtkbp1MK0hTrg0VRt6VqcJiRQ3fnFj54dX6Ou4mjD0Ifg9X/yKq
 CpeeKl/hZnZWHIh88lDfqVJM6mjuAOWJXOvrkanPpYYwe37q/ivX5qI4eBJX12+UgyDy
 kgZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hyr8lchvSxJvVZvNNPRmAWrg1/xZg5k7PwIJtfWhQPA=;
 b=Fe50PZLbx+0axl0GKzfVm1dbZATEMoNS1eF4M3bKIKSYP+qJPxz/XRMDUeAmoxKm9p
 D1moLAEG9wqAm1tnoUbK+WNs72VDWpdmjr8WfZ3hekdanfmzbzt9i3wHYh4lXv9CC+re
 ZkYQ+R6NbQnwo9xSjlyZkjqPtAD4Ra/fquLUHDw8Tl+nFlpgo4R4vLxqcwyzyVdPK+w4
 d/zgGkQfyxhTe0nZPEYn3aJAxUntwggSTqzYbjrk3TqXCbfX/81oJ42xjfFDaeca90uR
 VJ3h74BYy8v0MAVO2L2M2NJr2H59a8/CubU7HOWqWp4yMdnuBtKiWQ7tFxsPPqiX0/Sf
 oCIQ==
X-Gm-Message-State: AOAM533+K4ivxmOOOzpbRNuMVJ5PSeXx8RJiQALsD2jnoj64wqlWaCKp
 w3xjSCU2Vbim88w6VFW6h1Y=
X-Google-Smtp-Source: ABdhPJyeyXIwnxx7GpXcIqMRyfd7KwZ2in6ydXgLTZ+VY3mJEJDH9hq+D3/8NJaRPmbwCXUcwrRYFw==
X-Received: by 2002:a17:907:7711:b0:6ce:e03c:e1e2 with SMTP id
 kw17-20020a170907771100b006cee03ce1e2mr4707576ejc.769.1646925949456; 
 Thu, 10 Mar 2022 07:25:49 -0800 (PST)
Received: from skbuf ([188.25.231.156]) by smtp.gmail.com with ESMTPSA id
 y14-20020a056402440e00b00416046b623csm2297799eda.2.2022.03.10.07.25.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 07:25:48 -0800 (PST)
Date: Thu, 10 Mar 2022 17:25:47 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220310152547.etuov6kpqotnyv2p@skbuf>
References: <20220301100321.951175-1-tobias@waldekranz.com>
 <20220301100321.951175-11-tobias@waldekranz.com>
 <20220303222658.7ykn6grkkp6htm7a@skbuf>
 <87k0d1n8ko.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87k0d1n8ko.fsf@waldekranz.com>
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

On Thu, Mar 10, 2022 at 04:14:31PM +0100, Tobias Waldekranz wrote:
> On Fri, Mar 04, 2022 at 00:26, Vladimir Oltean <olteanv@gmail.com> wrote:
> > On Tue, Mar 01, 2022 at 11:03:21AM +0100, Tobias Waldekranz wrote:
> >> Allocate a SID in the STU for each MSTID in use by a bridge and handle
> >> the mapping of MSTIDs to VLANs using the SID field of each VTU entry.
> >> 
> >> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> >> ---
> >>  drivers/net/dsa/mv88e6xxx/chip.c | 178 +++++++++++++++++++++++++++++++
> >>  drivers/net/dsa/mv88e6xxx/chip.h |  13 +++
> >>  2 files changed, 191 insertions(+)
> >> 
> >> diff --git a/drivers/net/dsa/mv88e6xxx/chip.c b/drivers/net/dsa/mv88e6xxx/chip.c
> >> index c14a62aa6a6c..4fb4ec1dff79 100644
> >> --- a/drivers/net/dsa/mv88e6xxx/chip.c
> >> +++ b/drivers/net/dsa/mv88e6xxx/chip.c
> >> @@ -1818,6 +1818,137 @@ static int mv88e6xxx_stu_setup(struct mv88e6xxx_chip *chip)
> >>  	return mv88e6xxx_stu_loadpurge(chip, &stu);
> >>  }
> >>  
> >> +static int mv88e6xxx_sid_new(struct mv88e6xxx_chip *chip, u8 *sid)
> >> +{
> >> +	DECLARE_BITMAP(busy, MV88E6XXX_N_SID) = { 0 };
> >> +	struct mv88e6xxx_mst *mst;
> >> +
> >> +	set_bit(0, busy);
> >> +
> >> +	list_for_each_entry(mst, &chip->msts, node) {
> >> +		set_bit(mst->stu.sid, busy);
> >> +	}
> >> +
> >> +	*sid = find_first_zero_bit(busy, MV88E6XXX_N_SID);
> >> +
> >> +	return (*sid >= mv88e6xxx_max_sid(chip)) ? -ENOSPC : 0;
> >> +}
> >> +
> >> +static int mv88e6xxx_sid_put(struct mv88e6xxx_chip *chip, u8 sid)
> >> +{
> >> +	struct mv88e6xxx_mst *mst, *tmp;
> >> +	int err = 0;
> >> +
> >> +	list_for_each_entry_safe(mst, tmp, &chip->msts, node) {
> >> +		if (mst->stu.sid == sid) {
> >> +			if (refcount_dec_and_test(&mst->refcnt)) {
> >> +				mst->stu.valid = false;
> >> +				err = mv88e6xxx_stu_loadpurge(chip, &mst->stu);
> >
> > It is interesting what to do if this fails. Possibly not this, because
> > the entry remains in hardware but not in software.
> 
> True, I will let the error bubble up and keep the SW state in sync with
> the hardware.

Ok. For what it's worth, if you bump a refcount from 0 to 1 as part of
the error handling here, you need to do so using refcount_set(1), not
refcount_inc(). I found this out in commit 232deb3f9567 ("net: dsa:
avoid refcount warnings when ->port_{fdb,mdb}_del returns error").
Just thought I'd mention it in case you didn't know, to avoid a future
respin for that reason.

> >> +				list_del(&mst->node);
> >> +				kfree(mst);
> >> +			}
> >> +
> >> +			return err;
> >> +		}
> >> +	}
> >> +
> >> +	return -ENOENT;
> >> +}
> >> +
> >> +static int mv88e6xxx_sid_get(struct mv88e6xxx_chip *chip, struct net_device *br,
> >> +			     u16 msti, u8 *sid)
> >> +{
> >> +	struct mv88e6xxx_mst *mst;
> >> +	int err, i;
> >> +
> >> +	if (!br)
> >> +		return 0;
> >
> > Is this condition possible?
> 
> Removing.
> 
> >> +
> >> +	if (!mv88e6xxx_has_stu(chip))
> >> +		return -EOPNOTSUPP;
> >> +
> >> +	list_for_each_entry(mst, &chip->msts, node) {
> >> +		if (mst->br == br && mst->msti == msti) {
> >> +			refcount_inc(&mst->refcnt);
> >> +			*sid = mst->stu.sid;
> >> +			return 0;
> >> +		}
> >> +	}
> >> +
> >> +	err = mv88e6xxx_sid_new(chip, sid);
> >> +	if (err)
> >> +		return err;
> >> +
> >> +	mst = kzalloc(sizeof(*mst), GFP_KERNEL);
> >> +	if (!mst)
> >> +		return -ENOMEM;
> >
> > This leaks the new SID.
> 
> I don't think so, the SID is just calculated based on what is in
> chip->msts. However:
> 
> - The naming is bad. Will change.

I see now. My bad. What are you renaming it to? If it isn't as concise
you could still keep it sid_new(). I see atu_new() is based on the same
find_first_zero_bit() concept.

> >> +
> >> +	INIT_LIST_HEAD(&mst->node);
> >> +	refcount_set(&mst->refcnt, 1);
> >> +	mst->br = br;
> >> +	mst->msti = msti;
> >> +	mst->stu.valid = true;
> >> +	mst->stu.sid = *sid;
> >> +
> >> +	/* The bridge starts out all ports in the disabled state. But
> >> +	 * a STU state of disabled means to go by the port-global
> >> +	 * state. So we set all user port's initial state to blocking,
> >> +	 * to match the bridge's behavior.
> >> +	 */
> >> +	for (i = 0; i < mv88e6xxx_num_ports(chip); i++)
> >> +		mst->stu.state[i] = dsa_is_user_port(chip->ds, i) ?
> >> +			MV88E6XXX_PORT_CTL0_STATE_BLOCKING :
> >> +			MV88E6XXX_PORT_CTL0_STATE_DISABLED;
> >> +
> >> +	list_add_tail(&mst->node, &chip->msts);
> >> +	return mv88e6xxx_stu_loadpurge(chip, &mst->stu);
> >
> > And this doesn't behave too well on failure (the MSTID exists in
> > software but not in hardware).
> 
> Yes, fixing in v3.
> 
> >> +}
> >> +
> >> +static int mv88e6xxx_port_mst_state_set(struct dsa_switch *ds, int port,
> >> +					const struct switchdev_mst_state *st)
> >> +{
> >> +	struct dsa_port *dp = dsa_to_port(ds, port);
> >> +	struct mv88e6xxx_chip *chip = ds->priv;
> >> +	struct mv88e6xxx_mst *mst;
> >> +	u8 state;
> >> +	int err;
> >> +
> >> +	if (!mv88e6xxx_has_stu(chip))
> >> +		return -EOPNOTSUPP;
> >> +
> >> +	switch (st->state) {
> >> +	case BR_STATE_DISABLED:
> >> +	case BR_STATE_BLOCKING:
> >> +	case BR_STATE_LISTENING:
> >> +		state = MV88E6XXX_PORT_CTL0_STATE_BLOCKING;
> >> +		break;
> >> +	case BR_STATE_LEARNING:
> >> +		state = MV88E6XXX_PORT_CTL0_STATE_LEARNING;
> >> +		break;
> >> +	case BR_STATE_FORWARDING:
> >> +		state = MV88E6XXX_PORT_CTL0_STATE_FORWARDING;
> >> +		break;
> >> +	default:
> >> +		return -EINVAL;
> >> +	}
> >> +
> >> +	list_for_each_entry(mst, &chip->msts, node) {
> >> +		if (mst->br == dsa_port_bridge_dev_get(dp) &&
> >> +		    mst->msti == st->msti) {
> >> +			if (mst->stu.state[port] == state)
> >> +				return 0;
> >> +
> >> +			mst->stu.state[port] = state;
> >> +			mv88e6xxx_reg_lock(chip);
> >> +			err = mv88e6xxx_stu_loadpurge(chip, &mst->stu);
> >> +			mv88e6xxx_reg_unlock(chip);
> >> +			return err;
> >> +		}
> >> +	}
> >> +
> >> +	return -ENOENT;
> >> +}
> >> +
> >>  static int mv88e6xxx_port_check_hw_vlan(struct dsa_switch *ds, int port,
> >>  					u16 vid)
> >>  {
> >> @@ -2437,6 +2568,12 @@ static int mv88e6xxx_port_vlan_leave(struct mv88e6xxx_chip *chip,
> >>  	if (err)
> >>  		return err;
> >>  
> >> +	if (!vlan.valid && vlan.sid) {
> >> +		err = mv88e6xxx_sid_put(chip, vlan.sid);
> >> +		if (err)
> >> +			return err;
> >> +	}
> >> +
> >>  	return mv88e6xxx_g1_atu_remove(chip, vlan.fid, port, false);
> >>  }
> >>  
> >> @@ -2482,6 +2619,44 @@ static int mv88e6xxx_port_vlan_del(struct dsa_switch *ds, int port,
> >>  	return err;
> >>  }
> >>  
> >> +static int mv88e6xxx_vlan_msti_set(struct dsa_switch *ds,
> >> +				   const struct switchdev_attr *attr)
> >> +{
> >> +	const struct switchdev_vlan_attr *vattr = &attr->u.vlan_attr;
> >> +	struct mv88e6xxx_chip *chip = ds->priv;
> >> +	struct mv88e6xxx_vtu_entry vlan;
> >> +	u8 new_sid;
> >> +	int err;
> >> +
> >> +	mv88e6xxx_reg_lock(chip);
> >> +
> >> +	err = mv88e6xxx_vtu_get(chip, vattr->vid, &vlan);
> >> +	if (err)
> >> +		goto unlock;
> >> +
> >> +	if (!vlan.valid) {
> >> +		err = -EINVAL;
> >> +		goto unlock;
> >> +	}
> >> +
> >> +	err = mv88e6xxx_sid_get(chip, attr->orig_dev, vattr->msti, &new_sid);
> >> +	if (err)
> >> +		goto unlock;
> >> +
> >> +	if (vlan.sid) {
> >> +		err = mv88e6xxx_sid_put(chip, vlan.sid);
> >> +		if (err)
> >> +			goto unlock;
> >> +	}
> >> +
> >> +	vlan.sid = new_sid;
> >> +	err = mv88e6xxx_vtu_loadpurge(chip, &vlan);
> >
> > Maybe you could move mv88e6xxx_sid_put() after this succeeds?
> 
> Yep. Also made sure to avoid needless updates of the VTU entry if it
> already belonged to the correct SID.
> 
> Thanks for the great review!

I realize I gave you conflicting advice here, first with inverting the
refcount_inc() with the refcount_dec(), then with having fast handling
of noop-changes to vlan.sid. I hope you're able to make some sense out
of that and avoid the obvious issue with the refcount temporarily
dropping to zero before going back to 1, which makes the sanity checker
complain.
