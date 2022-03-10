Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AADF4D4EE0
	for <lists.bridge@lfdr.de>; Thu, 10 Mar 2022 17:20:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA0F661218;
	Thu, 10 Mar 2022 16:20:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yHdgdqU5MWqy; Thu, 10 Mar 2022 16:20:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 55B8361220;
	Thu, 10 Mar 2022 16:20:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 11151C0073;
	Thu, 10 Mar 2022 16:20:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 83A1AC000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 16:20:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 721D261218
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 16:20:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t7XtcEz37X1f for <bridge@lists.linux-foundation.org>;
 Thu, 10 Mar 2022 16:20:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 55D2D61214
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 16:20:26 +0000 (UTC)
Received: by mail-lf1-x12a.google.com with SMTP id bt26so10354712lfb.3
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 08:20:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=k6OgL/z6xyQraQABSVfYgeydoW+8ffdkM6ASQFGYnFc=;
 b=6tWwYjJO7t29tf8hEjIH77l5ZvdGSdEOvjTLNGyXPWrBD1C0k76cIvbNNJzdJ47uWx
 rmoiAeGmtcWQUFGLe5G3z3D8GAztAkgpGvvRpgHxsAJ5lMmr4aY+m0ABiMMpUYYa+d/+
 w09XuoAaO0Vq4HiEqajEa1VHwEuHKPfdac1z13JphojTaZz5deh9+AjeJnLloWopPini
 QNL+ZK294p36Id1WJCXRfxLegWst6D90i/vyvUGDpV8ryklkLkeiuRcJlHSL8VFVtuWR
 JA5FaRL0z33xNgPvj7z/TQ2hSFXwSR2h6iXs7rVrzvlio+9nPdCkL2F8LbMwhckgnn/3
 1hsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=k6OgL/z6xyQraQABSVfYgeydoW+8ffdkM6ASQFGYnFc=;
 b=hBuYzaPd2nBT/2Z8QUrLG8PBloA0afP1LCn0J5CWvA4r4EOzA4X509K1i3khiQ7ClG
 g/aXf77v3Va7Ql2aSfGuUjS2C7aVzlTuuquykuNQsHOZ6zqF+zjNhzN94dzaryt6p91N
 mNDtyf9u/06bX67Vb33j+WPjFMMxNp7iNqbqdAKCS0qRhW9W/YwAmDgQuReUqcrpHDcR
 G8iVkSxefvTJW8uK9ZK6Y0nN34z5diGNn45NtN2jVfwNOapUJO6IoeHa1u2V8sHF8SC5
 KV4CfOLJ/wpy2c4nHAk5itdvz0v9rX5v2K65VxedklJ4ODN1BKqmNMKQdmZ3KT4vt2dJ
 b/Qg==
X-Gm-Message-State: AOAM533RUFe9W4EMePtbVx559zAU+wywD/VkCOy3lOHMNRWjZULU57UO
 Awf3xNdjmqadxJxMBQnQsoneP6+G3R8fvLGxfys=
X-Google-Smtp-Source: ABdhPJyrOU18INkvX9oTxj8d3WqnRuWU0PdDWOStGmpIR9Wc4Xy83lyyX897VBpMNDVNNQyi8SJR6Q==
X-Received: by 2002:a05:6512:3f17:b0:43d:8e7f:29f8 with SMTP id
 y23-20020a0565123f1700b0043d8e7f29f8mr3335181lfa.609.1646929223990; 
 Thu, 10 Mar 2022 08:20:23 -0800 (PST)
Received: from wkz-x280 (h-212-85-90-115.A259.priv.bahnhof.se. [212.85.90.115])
 by smtp.gmail.com with ESMTPSA id
 w15-20020a05651204cf00b004433bb6ec6bsm1045857lfq.282.2022.03.10.08.20.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 08:20:23 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <87h785n67k.fsf@waldekranz.com>
References: <20220301100321.951175-1-tobias@waldekranz.com>
 <20220301100321.951175-8-tobias@waldekranz.com>
 <20220303222055.7a5pr4la3wmuuekc@skbuf> <87mthymblh.fsf@waldekranz.com>
 <20220310103509.g35syl776kyh5j2n@skbuf> <87h785n67k.fsf@waldekranz.com>
Date: Thu, 10 Mar 2022 17:20:22 +0100
Message-ID: <87ee39n5ix.fsf@waldekranz.com>
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

On Thu, Mar 10, 2022 at 17:05, Tobias Waldekranz <tobias@waldekranz.com> wrote:
> On Thu, Mar 10, 2022 at 12:35, Vladimir Oltean <olteanv@gmail.com> wrote:
>> On Thu, Mar 10, 2022 at 09:54:34AM +0100, Tobias Waldekranz wrote:
>>> >> +	if (!dsa_port_can_configure_learning(dp) || dp->learning) {
>>> >> +		switch (state->state) {
>>> >> +		case BR_STATE_DISABLED:
>>> >> +		case BR_STATE_BLOCKING:
>>> >> +		case BR_STATE_LISTENING:
>>> >> +			/* Ideally we would only fast age entries
>>> >> +			 * belonging to VLANs controlled by this
>>> >> +			 * MST.
>>> >> +			 */
>>> >> +			dsa_port_fast_age(dp);
>>> >
>>> > Does mv88e6xxx support this? If it does, you might just as well
>>> > introduce another variant of ds->ops->port_fast_age() for an msti.
>>> 
>>> You can limit ATU operations to a particular FID. So the way I see it we
>>> could either have:
>>> 
>>> int (*port_vlan_fast_age)(struct dsa_switch *ds, int port, u16 vid)
>>> 
>>> + Maybe more generic. You could imagine there being a way to trigger
>>>   this operation from userspace for example.
>>> - We would have to keep the VLAN<->MSTI mapping in the DSA layer in
>>>   order to be able to do the fan-out in dsa_port_set_mst_state.
>>> 
>>> or:
>>> 
>>> int (*port_msti_fast_age)(struct dsa_switch *ds, int port, u16 msti)
>>> 
>>> + Let's the mapping be an internal affair in the driver.
>>> - Perhaps, less generically useful.
>>> 
>>> Which one do you prefer? Or is there a hidden third option? :)
>>
>> Yes, I was thinking of "port_msti_fast_age". I don't see a cheap way of
>> keeping VLAN to MSTI associations in the DSA layer. Only if we could
>> retrieve this mapping from the bridge layer - maybe with something
>> analogous to br_vlan_get_info(), but br_mst_get_info(), and this gets
>> passed a VLAN_N_VID sized bitmap, which the bridge populates with ones
>> and zeroes.
>
> That can easily be done. Given that, should we go for port_vlan_fast_age
> instead? port_msti_fast_age feels like an awkward interface, since I
> don't think there is any hardware out there that can actually perform
> that operation without internally fanning it out over all affected VIDs
> (or FIDs in the case of mv88e6xxx).
>
>> The reason why I asked for this is because I'm not sure of the
>> implications of flushing the entire FDB of the port for a single MSTP
>> state change. It would trigger temporary useless flooding in other MSTIs
>> at the very least. There isn't any backwards compatibility concern to
>> speak of, so we can at least try from the beginning to limit the
>> flushing to the required VLANs.
>
> Aside from the performance implications of flows being temporarily
> flooded I don't think there are any.
>
> I suppose if you've disabled flooding of unknown unicast on that port,
> you would loose the flow until you see some return traffic (or when one
> side gives up and ARPs). While somewhat esoteric, it would be nice to
> handle this case if the hardware supports it.
>
>> What I didn't think about, and will be a problem, is
>> dsa_port_notify_bridge_fdb_flush() - we don't know the vid to flush.
>> The easy way out here would be to export dsa_port_notify_bridge_fdb_flush(),
>> add a "vid" argument to it, and let drivers call it. Thoughts?
>
> To me, this seems to be another argument in favor of
> port_vlan_fast_age. That way you would know the VIDs being flushed at
> the DSA layer, and driver writers needn't concern themselves with having
> to remember to generate the proper notifications back to the bridge.
>
>> Alternatively, if you think that cross-flushing FDBs of multiple MSTIs
>> isn't a real problem, I suppose we could keep the "port_fast_age" method.
>
> What about falling back to it if the driver doesn't support per-VLAN
> flushing? Flushing all entries will work in most cases, at the cost of
> some temporary flooding. Seems more useful than refusing the offload
> completely.

Actually now that I think about it, maybe it is more reasonable to risk
having stale entries in the VLANs where the topology changed, rather
than nuking flows in unrelated VLANs.

>>> > And since it is new code, you could require that drivers _do_ support
>>> > configuring learning before they could support MSTP. After all, we don't
>>> > want to keep legacy mechanisms in place forever.
>>> 
>>> By "configuring learning", do you mean this new fast-age-per-vid/msti,
>>> or being able to enable/disable learning per port? If it's the latter,
>>> I'm not sure I understand how those two are related.
>>
>> The code from dsa_port_set_state() which you've copied:
>>
>> 	if (!dsa_port_can_configure_learning(dp) ||
>> 	    (do_fast_age && dp->learning)) {
>>
>> has this explanation:
>>
>> 1. DSA keeps standalone ports in the FORWARDING state.
>> 2. DSA also disables address learning on standalone ports, where this is
>>    possible (dsa_port_can_configure_learning(dp) == true).
>> 3. When a port joins a bridge, it leaves its FORWARDING state from
>>    standalone mode and inherits the bridge port's BLOCKING state
>> 4. dsa_port_set_state() treats a port transition from FORWARDING to
>>    BLOCKING as a transition requiring an FDB flush
>> 5. due to (2), the FDB flush at stage (4) is in fact not needed, because
>>    the FDB of that port should already be empty. Flushing the FDB may be
>>    a costly operation for some drivers, so it is avoided if possible.
>>
>> So this is why the "dsa_port_can_configure_learning()" check is there -
>> for compatibility with drivers that can't configure learning => they
>> keep learning enabled also in standalone mode => they need an FDB flush
>> when a standalone port joins a bridge.
>>
>> What I'm saying is: for drivers that offload MSTP, let's force them to
>> get the basics right first (have configurable learning), rather than go
>> forward forever with a backwards compatibility mode.
>
> Makes sense, I'll just move it up to the initial capability check.
