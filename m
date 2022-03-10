Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 010AB4D42E4
	for <lists.bridge@lfdr.de>; Thu, 10 Mar 2022 09:54:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0E0E8143B;
	Thu, 10 Mar 2022 08:54:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f9ReP6cycq9N; Thu, 10 Mar 2022 08:54:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id B829E8143D;
	Thu, 10 Mar 2022 08:54:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 41B8AC0073;
	Thu, 10 Mar 2022 08:54:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4CB7FC000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 08:54:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1E98760B71
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 08:54:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9XJvUsnitKaE for <bridge@lists.linux-foundation.org>;
 Thu, 10 Mar 2022 08:54:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0C9086061B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 08:54:38 +0000 (UTC)
Received: by mail-lj1-x231.google.com with SMTP id z26so6714136lji.8
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 00:54:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=CckdNSYPYZf2rZDScH/OvPXL2AjJadCF3mmLi4f4hcw=;
 b=OatCttRymAWh3ZREbboDujJz9m9mKb6j9QdM/3v3pS2K7KTkLFG+k8cG9fBTZNcjdW
 gtGT+tN3NJ6VW/p4KfmHQJkDdLVYos5GzYyJ/9unQlgQ7cESvTm1HxBCfo1UCONKsdMm
 fwJvsu20JYy4EgZ9iXhjGJXCxJUgGl7DqkzGCH1068ATWlthRii7cMKewPdC+RWmp7Ec
 Vk/08waJ10OZFdJJHx4hWZ2HEwobcM6uqlSOgmO8XDYCIS1m7CAnRuzZ+NsP0cR65E15
 9rVUj82I+XRk4+qVe34UIhzmH1TyfDWLDb03haGYYvuwK7SAE6u4k976t+9z36hGu1x/
 4Img==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=CckdNSYPYZf2rZDScH/OvPXL2AjJadCF3mmLi4f4hcw=;
 b=CkiKtLnm7o/xT9uK4LeX1gpdJhEVF6omE/MiOWcVp9brZZVZdkfk2W4VAWXDYZ7vBp
 KQKm/y6Wr7TVMzqiASdClkGLnBo4fXofPfcy5YAXVn3+9gjXLhQ5TU6bHptfXkZVvTiP
 Jdmhfa9VYzcFprmrQzD/w2U8T/Q7qHvm4OEVfWCE3mzQOdyIMi1R93pEiyRF52R0S3Qu
 fFvKgXA7F2KL3aV161DCKJeaqC7cJPcjxfa8hdVhAwxD//0EU14Kj/HI7iv8nBWcPoIK
 HWEhwGxPxMURzByqJj0OnlZw8s5+F2ed2DxDGy2h7d5ZwRQ5/9QflVSaZ3GL6iWhhcN2
 1R1A==
X-Gm-Message-State: AOAM531VGwMZkwME7omm5t1GLlsIiSpOsbMd9MyhXDSCMxz3jW8QDOa0
 txU3NO46lbkULDLOrkOIKxqSm5fZSubSJtntXJF5oQ==
X-Google-Smtp-Source: ABdhPJyT9zHZ3f1sEfsPPT+MAGLK40P2VJsgf5dFrtb2TuGFvPhzjjL/2zlTfTNdsy2R3JDbzm0O0A==
X-Received: by 2002:a2e:98c2:0:b0:247:e357:3dd7 with SMTP id
 s2-20020a2e98c2000000b00247e3573dd7mr2309660ljj.227.1646902476516; 
 Thu, 10 Mar 2022 00:54:36 -0800 (PST)
Received: from wkz-x280 (a124.broadband3.quicknet.se. [46.17.184.124])
 by smtp.gmail.com with ESMTPSA id
 w16-20020a2e8210000000b00247f7de532bsm901205ljg.69.2022.03.10.00.54.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 00:54:34 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20220303222055.7a5pr4la3wmuuekc@skbuf>
References: <20220301100321.951175-1-tobias@waldekranz.com>
 <20220301100321.951175-8-tobias@waldekranz.com>
 <20220303222055.7a5pr4la3wmuuekc@skbuf>
Date: Thu, 10 Mar 2022 09:54:34 +0100
Message-ID: <87mthymblh.fsf@waldekranz.com>
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
Subject: Re: [Bridge] [PATCH v2 net-next 07/10] net: dsa: Pass MST state
 changes to driver
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

On Fri, Mar 04, 2022 at 00:20, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Tue, Mar 01, 2022 at 11:03:18AM +0100, Tobias Waldekranz wrote:
>> Add the usual trampoline functionality from the generic DSA layer down
>> to the drivers for MST state changes.
>> 
>> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>> ---
>>  include/net/dsa.h  |  2 ++
>>  net/dsa/dsa_priv.h |  2 ++
>>  net/dsa/port.c     | 30 ++++++++++++++++++++++++++++++
>>  net/dsa/slave.c    |  6 ++++++
>>  4 files changed, 40 insertions(+)
>> 
>> diff --git a/include/net/dsa.h b/include/net/dsa.h
>> index cc8acb01bd9b..096e6e3a8e1e 100644
>> --- a/include/net/dsa.h
>> +++ b/include/net/dsa.h
>> @@ -943,6 +943,8 @@ struct dsa_switch_ops {
>>  				     struct dsa_bridge bridge);
>>  	void	(*port_stp_state_set)(struct dsa_switch *ds, int port,
>>  				      u8 state);
>> +	int	(*port_mst_state_set)(struct dsa_switch *ds, int port,
>> +				      const struct switchdev_mst_state *state);
>>  	void	(*port_fast_age)(struct dsa_switch *ds, int port);
>>  	int	(*port_pre_bridge_flags)(struct dsa_switch *ds, int port,
>>  					 struct switchdev_brport_flags flags,
>> diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
>> index 87ec0697e92e..a620e079ebc5 100644
>> --- a/net/dsa/dsa_priv.h
>> +++ b/net/dsa/dsa_priv.h
>> @@ -198,6 +198,8 @@ static inline struct net_device *dsa_master_find_slave(struct net_device *dev,
>>  void dsa_port_set_tag_protocol(struct dsa_port *cpu_dp,
>>  			       const struct dsa_device_ops *tag_ops);
>>  int dsa_port_set_state(struct dsa_port *dp, u8 state, bool do_fast_age);
>> +int dsa_port_set_mst_state(struct dsa_port *dp,
>> +			   const struct switchdev_mst_state *state);
>>  int dsa_port_enable_rt(struct dsa_port *dp, struct phy_device *phy);
>>  int dsa_port_enable(struct dsa_port *dp, struct phy_device *phy);
>>  void dsa_port_disable_rt(struct dsa_port *dp);
>> diff --git a/net/dsa/port.c b/net/dsa/port.c
>> index 5f45cb7d70ba..26cfbc8ab499 100644
>> --- a/net/dsa/port.c
>> +++ b/net/dsa/port.c
>> @@ -108,6 +108,36 @@ int dsa_port_set_state(struct dsa_port *dp, u8 state, bool do_fast_age)
>>  	return 0;
>>  }
>>  
>> +int dsa_port_set_mst_state(struct dsa_port *dp,
>> +			   const struct switchdev_mst_state *state)
>> +{
>> +	struct dsa_switch *ds = dp->ds;
>> +	int err, port = dp->index;
>> +
>> +	if (!ds->ops->port_mst_state_set)
>> +		return -EOPNOTSUPP;
>> +
>> +	err = ds->ops->port_mst_state_set(ds, port, state);
>> +	if (err)
>> +		return err;
>> +
>> +	if (!dsa_port_can_configure_learning(dp) || dp->learning) {
>> +		switch (state->state) {
>> +		case BR_STATE_DISABLED:
>> +		case BR_STATE_BLOCKING:
>> +		case BR_STATE_LISTENING:
>> +			/* Ideally we would only fast age entries
>> +			 * belonging to VLANs controlled by this
>> +			 * MST.
>> +			 */
>> +			dsa_port_fast_age(dp);
>
> Does mv88e6xxx support this? If it does, you might just as well
> introduce another variant of ds->ops->port_fast_age() for an msti.

You can limit ATU operations to a particular FID. So the way I see it we
could either have:

int (*port_vlan_fast_age)(struct dsa_switch *ds, int port, u16 vid)

+ Maybe more generic. You could imagine there being a way to trigger
  this operation from userspace for example.
- We would have to keep the VLAN<->MSTI mapping in the DSA layer in
  order to be able to do the fan-out in dsa_port_set_mst_state.

or:

int (*port_msti_fast_age)(struct dsa_switch *ds, int port, u16 msti)

+ Let's the mapping be an internal affair in the driver.
- Perhaps, less generically useful.

Which one do you prefer? Or is there a hidden third option? :)

> And since it is new code, you could require that drivers _do_ support
> configuring learning before they could support MSTP. After all, we don't
> want to keep legacy mechanisms in place forever.

By "configuring learning", do you mean this new fast-age-per-vid/msti,
or being able to enable/disable learning per port? If it's the latter,
I'm not sure I understand how those two are related.
