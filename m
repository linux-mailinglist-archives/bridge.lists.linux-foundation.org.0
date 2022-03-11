Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A75CF4D5CDA
	for <lists.bridge@lfdr.de>; Fri, 11 Mar 2022 08:59:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CED2960864;
	Fri, 11 Mar 2022 07:59:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IgDZ9OFjFVjm; Fri, 11 Mar 2022 07:59:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 5FD0660881;
	Fri, 11 Mar 2022 07:59:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 195A6C0073;
	Fri, 11 Mar 2022 07:59:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A07BDC000B
 for <bridge@lists.linux-foundation.org>; Fri, 11 Mar 2022 07:59:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9B57640168
 for <bridge@lists.linux-foundation.org>; Fri, 11 Mar 2022 07:59:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MKIv1W9mj4WQ for <bridge@lists.linux-foundation.org>;
 Fri, 11 Mar 2022 07:59:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5AC7E400E9
 for <bridge@lists.linux-foundation.org>; Fri, 11 Mar 2022 07:59:14 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id bu29so13778065lfb.0
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 23:59:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=Mwdiioncj/l/cynziYaX1F6ed/Qr7hUrnVD41vK//OY=;
 b=NFol+J8jV+aPmMHdQfby2hgu/UECHYPTMby4XDMqFm2Dx3W0K15oIN3u/7h3B8HlAM
 XVYWOg7KIdNTdnce9miayjD42y6zEOCsjpzqcIHHJrAGvly+9o53fXqUJqm7etjTsB4i
 GkVsWujIJ5enwoNBRmgMg1gMFwpudEaRfea89eNVXAdpCd3ynMiJOGjTqwHDwRIu+LBX
 SCMJqY2RZ/Fo0G2w+8y/syFGrrrT8HtFXvGLoXAt/LEFXUklTKwX7FOfCZ5lAxIcyQwR
 X8kKP/ZC3tvWkem1uWTlzEg/HgrneNlPoQsC8EcFAwfEfngnV5IUBUlizXleOITgPxB3
 2F3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Mwdiioncj/l/cynziYaX1F6ed/Qr7hUrnVD41vK//OY=;
 b=y+QXSQYed2p0vtscWg3lW/Bkz+2fQhK2MN8bUTKXq4AhjHlX682PkS5sSb41I3Se+z
 woB5mYyLRrZVezqax5Ufhc93nfYMK6TomYnAkYgcSyhZTvlHC9YdMaBWo2OCJTNAQLWQ
 h/4rZb+IbRw/EZhStlLCb4McvWMcOs5lP5ywMlgBFgxEZ51Zbv910rNFu0mt/Ln1HIAt
 p+GnV23x/iFIc4Wg0PGsLZhQVYj/RIGJDekERRpjKS0uaFxJpRhdxCw7kdNjVI9UO0zB
 WBMrjef50m5E0vgsgyiBlMCs4NOzgd5sbYYZNamUW85vUp58Tv8oflzSTiSbA3d6vafn
 +UGA==
X-Gm-Message-State: AOAM533mxR/2J9g7ZxyovvWBq1OtYd/8PMzmoGY9lvcXWS48NQ6DrzhZ
 Fs1JkSmr9w0MmQM4OQSNGwWHgfZt/ltBFw==
X-Google-Smtp-Source: ABdhPJxSVNzm7fcZkugcNK25HRPd1LdcUjg89I2YlhZQDTS8+GKKmsNWC6+vP8ZvCqOjk1Vc+1UEzQ==
X-Received: by 2002:a05:6512:c07:b0:448:3b4b:2b75 with SMTP id
 z7-20020a0565120c0700b004483b4b2b75mr5297102lfu.283.1646985552193; 
 Thu, 10 Mar 2022 23:59:12 -0800 (PST)
Received: from wse-c0127 ([208.127.141.29]) by smtp.gmail.com with ESMTPSA id
 k17-20020a056512331100b00448303beb30sm1454320lfe.101.2022.03.10.23.59.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 23:59:11 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <YioRQpUTJ7WmTLXQ@lunn.ch>
References: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
 <20220310142320.611738-4-schultz.hans+netdev@gmail.com>
 <YioRQpUTJ7WmTLXQ@lunn.ch>
Date: Fri, 11 Mar 2022 08:59:04 +0100
Message-ID: <86y21gvs1j.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, Daniel Borkmann <daniel@iogearbox.net>,
 netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, davem@davemloft.net
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

On tor, mar 10, 2022 at 15:54, Andrew Lunn <andrew@lunn.ch> wrote:
>> +		if (mv88e6xxx_port_is_locked(chip, chip->ports[spid].port))
>> +			err = mv88e6xxx_switchdev_handle_atu_miss_violation(chip,
>> +									    chip->ports[spid].port,
>> +									    &entry,
>> +									    fid);
>
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
>
> I could be reading this code wrong, but it looks like you assume there
> is a single new entry in the ATU. But interrupts on these devices are
> slow. It would be easy for two or more devices to pop into existence
> at the same time. Don't you need to walk the whole ATU to find all the
> new entries? Have you tried this with a traffic generating populating
> the ATU with new entries at different rates, up to line rate? Do you
> get notifications for them all?
>
>     Andrew

We have not tried your said test, but if a packet doesn't manage to
trigger a ATU miss violation interrupt, not much will happen as far as I
see. The device sending the packet will not get access, but if it sends
again (maybe after a short while), it can still trigger the ATU miss
violation interrupt and get access.
I think that the normal behaviour for a device would be to try and
connect, and if that is not successfull inside a short time, it will wait
for a timeout before trying again.
