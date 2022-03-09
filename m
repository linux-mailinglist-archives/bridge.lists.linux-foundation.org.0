Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B47F74D3218
	for <lists.bridge@lfdr.de>; Wed,  9 Mar 2022 16:47:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 40C3660B41;
	Wed,  9 Mar 2022 15:47:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w0nm25HbQe0U; Wed,  9 Mar 2022 15:47:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id B8F9C60B4C;
	Wed,  9 Mar 2022 15:47:11 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7940BC0073;
	Wed,  9 Mar 2022 15:47:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 77D24C000B
 for <bridge@lists.linux-foundation.org>; Wed,  9 Mar 2022 15:47:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6175D40B0E
 for <bridge@lists.linux-foundation.org>; Wed,  9 Mar 2022 15:47:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r-IcS58DWQwZ for <bridge@lists.linux-foundation.org>;
 Wed,  9 Mar 2022 15:47:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com
 [IPv6:2a00:1450:4864:20::22d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E37F440AE9
 for <bridge@lists.linux-foundation.org>; Wed,  9 Mar 2022 15:47:05 +0000 (UTC)
Received: by mail-lj1-x22d.google.com with SMTP id z26so3714978lji.8
 for <bridge@lists.linux-foundation.org>; Wed, 09 Mar 2022 07:47:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=hE+S/0AbaM2pPcNCMSw4Jzqj4RQmx4E5rMxUDwkwLVU=;
 b=laFC8gg+0MeWXFJEZV67/eLluhTcckbRqcldkSukV2V4XmAwYaFkLQjBdndAn5ZP0z
 mhC5v9D7OHl09L7LsjRRnYjfzlC2uZYBm8r2wLkackJwepfp1ji5jUdBgGFB7Xl1Iiim
 vDywbsAA1eY3CPdJe4gJYtx/9yVK2rSlwXTiM2lSaT+G+jyMMS9SRdR0APkgwzhYqOgi
 CxmkzfsC9VOSf90x7xvDq6sEC0EO6XkbIcdFlQhS1VFkYH1Nip4IAGGcuai3L78Ect2V
 eAxeu2xkRnfX7sJJUwoWU+N8mtHan/aHTMlgeCvECz6/4TZUHCC+Py1EEOx+/5csKhoU
 Fidg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=hE+S/0AbaM2pPcNCMSw4Jzqj4RQmx4E5rMxUDwkwLVU=;
 b=ZyQ45a4lwJcU+asIHKNGowJPg+nfiWDVuXUOScL/+f3a6bnpedukbihOH23XUbtg8C
 qGp2P73LEoOm9rXxC098iAJ3vRX5CohMxt83q9srJ2W6qNOWMq6ZtuyVBTJp7c6DrTH9
 yLuogzlkisoZzeEPOFe3qfsSEjLpDugUkah2jmJJHL/eoh2HI911v/synDOujIy+yUum
 wgi8+UB+0AzizqIUrau69/N+90uds/bgOcX1erDxnlCNKIltGjOvjRZhIqUWtwo1akxB
 rWCEB6PexRMFlyA6o4NRuLvsAuusWIWMNR5IcPVq0rTJqCRuKWG0Rh9tCYTTdGdW2ud5
 CNYA==
X-Gm-Message-State: AOAM532ykFKkBqnjqpkxG5ekCTLci1oR08Wtm0NugHEq5RuSP3OgLb0e
 vLUR9O/R+gj71lkZraQIcui0RMOWxgXzha0RnOEVIg==
X-Google-Smtp-Source: ABdhPJyCKiyHoWMiJliNGv/4VA6yAV57wz5RNHLmQ0sm2hKI0o/my/XlW0qWYefrT775v/KuLp8rig==
X-Received: by 2002:a2e:90ca:0:b0:246:48ce:ba0e with SMTP id
 o10-20020a2e90ca000000b0024648ceba0emr31858ljg.401.1646840823568; 
 Wed, 09 Mar 2022 07:47:03 -0800 (PST)
Received: from wkz-x280 (a124.broadband3.quicknet.se. [46.17.184.124])
 by smtp.gmail.com with ESMTPSA id
 u12-20020a056512128c00b00446499f855dsm455715lfs.78.2022.03.09.07.47.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Mar 2022 07:47:03 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20220303222942.dkz7bfuagkv7hbpp@skbuf>
References: <20220301100321.951175-1-tobias@waldekranz.com>
 <20220301100321.951175-7-tobias@waldekranz.com>
 <20220303222942.dkz7bfuagkv7hbpp@skbuf>
Date: Wed, 09 Mar 2022 16:47:02 +0100
Message-ID: <87pmmvm8ll.fsf@waldekranz.com>
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
Subject: Re: [Bridge] [PATCH v2 net-next 06/10] net: dsa: Pass VLAN MSTI
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

On Fri, Mar 04, 2022 at 00:29, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Tue, Mar 01, 2022 at 11:03:17AM +0100, Tobias Waldekranz wrote:
>> Add the usual trampoline functionality from the generic DSA layer down
>> to the drivers for VLAN MSTI migrations.
>> 
>> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>> ---
>>  include/net/dsa.h  |  3 +++
>>  net/dsa/dsa_priv.h |  1 +
>>  net/dsa/port.c     | 10 ++++++++++
>>  net/dsa/slave.c    |  6 ++++++
>>  4 files changed, 20 insertions(+)
>> 
>> diff --git a/include/net/dsa.h b/include/net/dsa.h
>> index cfedcfb86350..cc8acb01bd9b 100644
>> --- a/include/net/dsa.h
>> +++ b/include/net/dsa.h
>> @@ -962,6 +962,9 @@ struct dsa_switch_ops {
>>  				 struct netlink_ext_ack *extack);
>>  	int	(*port_vlan_del)(struct dsa_switch *ds, int port,
>>  				 const struct switchdev_obj_port_vlan *vlan);
>> +	int	(*vlan_msti_set)(struct dsa_switch *ds,
>> +				 const struct switchdev_attr *attr);
>
> I would rather pass the struct switchdev_vlan_attr and the orig_dev
> (bridge) as separate arguments here. Or even the struct dsa_bridge, for
> consistency to the API changes for database isolation.

Fair point. I'll change.

>> +
>>  	/*
>>  	 * Forwarding database
>>  	 */
>> diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
>> index 07c0ad52395a..87ec0697e92e 100644
>> --- a/net/dsa/dsa_priv.h
>> +++ b/net/dsa/dsa_priv.h
>> @@ -217,6 +217,7 @@ int dsa_port_vlan_filtering(struct dsa_port *dp, bool vlan_filtering,
>>  			    struct netlink_ext_ack *extack);
>>  bool dsa_port_skip_vlan_configuration(struct dsa_port *dp);
>>  int dsa_port_ageing_time(struct dsa_port *dp, clock_t ageing_clock);
>> +int dsa_port_vlan_msti(struct dsa_port *dp, const struct switchdev_attr *attr);
>>  int dsa_port_mtu_change(struct dsa_port *dp, int new_mtu,
>>  			bool targeted_match);
>>  int dsa_port_fdb_add(struct dsa_port *dp, const unsigned char *addr,
>> diff --git a/net/dsa/port.c b/net/dsa/port.c
>> index d9da425a17fb..5f45cb7d70ba 100644
>> --- a/net/dsa/port.c
>> +++ b/net/dsa/port.c
>> @@ -778,6 +778,16 @@ int dsa_port_bridge_flags(struct dsa_port *dp,
>>  	return 0;
>>  }
>>  
>> +int dsa_port_vlan_msti(struct dsa_port *dp, const struct switchdev_attr *attr)
>> +{
>> +	struct dsa_switch *ds = dp->ds;
>> +
>> +	if (!ds->ops->vlan_msti_set)
>> +		return -EOPNOTSUPP;
>> +
>> +	return ds->ops->vlan_msti_set(ds, attr);
>
> I guess this doesn't need to be a cross-chip notifier event for all
> switches, because replication to all bridge ports is handled by
> switchdev_handle_port_attr_set(). Ok. But isn't it called too many times
> per switch?

It is certainly called more times than necessary. But I'm not aware of
any way to limit it. Just as with other bridge-global settings like
ageing timeout, the bridge will just replicate the event to each port,
not knowing whether some of them belong to the same underlying ASIC or
not.

We could leverage hwdoms in the bridge to figure that out, but then:

- Drivers that do not implement forward offloading would miss out on
  this optimization. Unfortunate but not a big deal.

- Since DSA presents multi-chip trees as a single switchdev, the DSA
  layer would have to replicate the event out to each device. Doable,
  but feels like a series of its own.

>> +}
>> +
>>  int dsa_port_mtu_change(struct dsa_port *dp, int new_mtu,
>>  			bool targeted_match)
>>  {
>> diff --git a/net/dsa/slave.c b/net/dsa/slave.c
>> index 089616206b11..c6ffcd782b5a 100644
>> --- a/net/dsa/slave.c
>> +++ b/net/dsa/slave.c
>> @@ -314,6 +314,12 @@ static int dsa_slave_port_attr_set(struct net_device *dev, const void *ctx,
>>  
>>  		ret = dsa_port_bridge_flags(dp, attr->u.brport_flags, extack);
>>  		break;
>> +	case SWITCHDEV_ATTR_ID_VLAN_MSTI:
>> +		if (!dsa_port_offloads_bridge_dev(dp, attr->orig_dev))
>> +			return -EOPNOTSUPP;
>> +
>> +		ret = dsa_port_vlan_msti(dp, attr);
>> +		break;
>>  	default:
>>  		ret = -EOPNOTSUPP;
>>  		break;
>> -- 
>> 2.25.1
>> 
