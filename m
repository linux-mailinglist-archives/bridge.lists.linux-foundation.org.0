Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 348244D021F
	for <lists.bridge@lfdr.de>; Mon,  7 Mar 2022 15:54:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D6DEC60B50;
	Mon,  7 Mar 2022 14:54:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xuSPx05ZM9uL; Mon,  7 Mar 2022 14:54:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 8637B60AAC;
	Mon,  7 Mar 2022 14:54:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 59921C0073;
	Mon,  7 Mar 2022 14:54:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 70FAFC000B
 for <bridge@lists.linux-foundation.org>; Mon,  7 Mar 2022 14:54:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5E39B410BC
 for <bridge@lists.linux-foundation.org>; Mon,  7 Mar 2022 14:54:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UlAf0gDWlm6L for <bridge@lists.linux-foundation.org>;
 Mon,  7 Mar 2022 14:54:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 729E8410C8
 for <bridge@lists.linux-foundation.org>; Mon,  7 Mar 2022 14:54:21 +0000 (UTC)
Received: by mail-lj1-x231.google.com with SMTP id s25so20821399lji.5
 for <bridge@lists.linux-foundation.org>; Mon, 07 Mar 2022 06:54:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=yZXiD6hS6mJeLTwuxQbRhcKg3gd8jZak9MF/XHZfC80=;
 b=PInE7sNH3FAw4VBYjgCxQeCZGyzeISgqmm8oc6aAxEeLc57fWstxSXYsgSHoUoPc1H
 aBUk2pP6pp1/zBjKwlLgLVhICf0t97exUkqTqsYQ2AP0gQ74x9Rf8hNxwNNdSiduM+gG
 KfiFkcKz5VQY2HEuMc38UuAQWb40syXvkBYBVLg/5t02c/Un500zw1s6i4B9AHc4YHEb
 w4bItCDYpunWpwvsj8/4gQouWrfhtWGtQTE2rOZOCJRL5VhOfRGkBmFFqcNm3YlH4IIw
 ZRK8JFB4qmi8vJcAKp/u6YB14RU4Z5lBM9HIsLlMNnqlFaHrUCcdgVLmylgRZXp8thDt
 tbgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=yZXiD6hS6mJeLTwuxQbRhcKg3gd8jZak9MF/XHZfC80=;
 b=6g41zM+kqRXZhTu+d9VnWlLZKNje8uQY3DPdAx8LEcOUTQ/dE58gumFD60d1EozXV6
 f78SqwOgxDWRMLRNeBqYMonqRQE+c50yyBjVuVnG3CWfp8UG00eL16OdyBSlIqMjobde
 T5rlIG1AhRtoqafuDLOzlMaowFtTQ5fRbT+mwJYXomg92kMiN7wF760H8fD0D2oliH3o
 /T1VVi76qSctI4VcJbcIXZeFk1tp5zxk9KPSQKVmxTVupULHVWDAjSDyXnZVJBFcjMsP
 EdFXxM/RMpus5OlRi86fUffhuej33re2jnL1iAyLUHu56h/iZcpSXz5uFS87HkZC6hNQ
 tlIQ==
X-Gm-Message-State: AOAM531RFmX5dFO9HxH3+ySs8l3Q5vXt+iCKjpDrGBlJW40c3QBbKi63
 fDJFJg1MNP5EF71BzQTdhn7NsC+vJziQyo/s98Cx7A==
X-Google-Smtp-Source: ABdhPJwuV83TcfVQxlPEaU4xjxNDO5xJ1kFMKI6p1CPlavmun9vuyCu39TiRhPsVovuCSNgUweVDjQ==
X-Received: by 2002:a05:651c:514:b0:246:8b8c:a97b with SMTP id
 o20-20020a05651c051400b002468b8ca97bmr8227623ljp.238.1646664859059; 
 Mon, 07 Mar 2022 06:54:19 -0800 (PST)
Received: from wkz-x280 (a124.broadband3.quicknet.se. [46.17.184.124])
 by smtp.gmail.com with ESMTPSA id
 w27-20020ac2599b000000b004481e254f08sm1946043lfn.240.2022.03.07.06.54.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Mar 2022 06:54:18 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20220303222742.si2gksy3tzagsc7r@skbuf>
References: <20220301100321.951175-1-tobias@waldekranz.com>
 <20220301100321.951175-3-tobias@waldekranz.com>
 <20220303222742.si2gksy3tzagsc7r@skbuf>
Date: Mon, 07 Mar 2022 15:54:17 +0100
Message-ID: <877d95olt2.fsf@waldekranz.com>
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
Subject: Re: [Bridge] [PATCH v2 net-next 02/10] net: bridge: mst: Allow
 changing a VLAN's MSTI
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

On Fri, Mar 04, 2022 at 00:27, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Tue, Mar 01, 2022 at 11:03:13AM +0100, Tobias Waldekranz wrote:
>> Allow a VLAN to move out of the CST (MSTI 0), to an independent tree.
>> 
>> The user manages the VID to MSTI mappings via a global VLAN
>> setting. The proposed iproute2 interface would be:
>> 
>>     bridge vlan global set dev br0 vid <VID> msti <MSTI>
>> 
>> Changing the state in non-zero MSTIs is still not supported, but will
>> be addressed in upcoming changes.
>> 
>> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>> ---
>
>> +static void br_mst_vlan_sync_state(struct net_bridge_vlan *pv, u16 msti)
>> +{
>> +	struct net_bridge_vlan_group *vg = nbp_vlan_group(pv->port);
>> +	struct net_bridge_vlan *v;
>> +
>> +	list_for_each_entry(v, &vg->vlan_list, vlist) {
>> +		/* If this port already has a defined state in this
>> +		 * MSTI (through some other VLAN membership), inherit
>> +		 * it.
>> +		 */
>> +		if (v != pv && v->brvlan->msti == msti) {
>> +			br_mst_vlan_set_state(pv->port, pv, v->state);
>> +			return;
>> +		}
>> +	}
>> +
>> +	/* Otherwise, start out in a new MSTI with all ports disabled. */
>> +	return br_mst_vlan_set_state(pv->port, pv, BR_STATE_DISABLED);
>> +}
>> +
>> +int br_mst_vlan_set_msti(struct net_bridge_vlan *mv, u16 msti)
>> +{
>> +	struct net_bridge_vlan_group *vg;
>> +	struct net_bridge_vlan *pv;
>> +	struct net_bridge_port *p;
>
> No attempt to detect non-changes to the MSTI, and exit early? In a later
> patch you will also notify switchdev uselessly because of this.

Yeah you're right. Will fix in v3. Thanks
