Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B178962160B
	for <lists.bridge@lfdr.de>; Tue,  8 Nov 2022 15:21:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C392060D61;
	Tue,  8 Nov 2022 14:21:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C392060D61
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=B/hN92IL
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hldlWrDDI7gY; Tue,  8 Nov 2022 14:21:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 29E2E60D66;
	Tue,  8 Nov 2022 14:21:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 29E2E60D66
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 93D6EC0077;
	Tue,  8 Nov 2022 14:21:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A18CDC002D
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 14:21:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6801F4025D
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 14:21:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6801F4025D
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=B/hN92IL
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r7Ad0WON-U5q for <bridge@lists.linux-foundation.org>;
 Tue,  8 Nov 2022 14:21:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 614A9401A0
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 614A9401A0
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 14:21:49 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id bj12so38905504ejb.13
 for <bridge@lists.linux-foundation.org>; Tue, 08 Nov 2022 06:21:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=CQJVvugu8oLvsWyJLc1Y3oVePQ9NOwghfaFJZvViXwA=;
 b=B/hN92IL+8Hab/e0WxYLv1wpgyxOtmrQRt5kHiaCdrUnzIcpjcqYotzXQU0Q8oBofu
 +5AzPAY317S1p3806QcDHJlh4e8PqS/a7p2lohbxNyYTFgJ+FspcnFycE3ng/Pdb9JdY
 mc7W3VGG3m0Jx1aPSedDDJiBv7Ce6Af4MR9yKG/HNu5qq5tZ8WpG+Exxpd7l3Pg/tJ0W
 hgnaLc3ayzfSJZObw2fk1TcWv03DbZUMFDJjdL1FEUU+6NSq9n4+9NivRqMehYnCNACz
 ijYqmtQ1Niet+GBQ3P5ahmoWynK6xaXehrK9jKB8uhrx0Y5gtmmlsFfCeYkNmNaVOc/3
 3s5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=CQJVvugu8oLvsWyJLc1Y3oVePQ9NOwghfaFJZvViXwA=;
 b=YdfPJrrMRkw5OONSKcidYw0aRNaJ/famhu942IkSWUB4qi55ZQalGMN7O06dYibdiW
 hsx9YFJPKmTa4EzgoihieCTL58PswcZar51MGSBFcZQ/h5R1xhyfuEczob1OfSm00RMr
 hnOI0K0WnL4h36ZK1C4jE1it6oSbsIwfqQ69tx41q5fY1cHyXZ7IHewDpMJfsQmNn/5d
 ywJJE2moBWV0PXsCarXj28soAf8ftvVnAUei3NfMJLh/BcfW2EOHlKsvkfrWLnsWGwmz
 Caq2/e5h4sujxp2WVmpcf6ndkqal4moLqqKC0jqIyYPHm9wtF9YMNRVVrFvUp7/j7jcx
 K5cA==
X-Gm-Message-State: ACrzQf10UxsYwiAaHElJTbd6p4nvRO0KCVjwP+fnRgzHlwdVnWIvTzTj
 coI7FfARcGRs/Yk2kNkj72o=
X-Google-Smtp-Source: AMsMyM6UZ8Ic3EDXugsTQiZBl1mx1uptKhN1E0pp1A4iLZ9CqVJh9a3ARonhxRi9HfCSYnkgmFIEKQ==
X-Received: by 2002:a17:906:f8b:b0:7ad:a030:4915 with SMTP id
 q11-20020a1709060f8b00b007ada0304915mr990728ejj.267.1667917307420; 
 Tue, 08 Nov 2022 06:21:47 -0800 (PST)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 q3-20020aa7cc03000000b00461aebb2fe2sm5582510edt.54.2022.11.08.06.21.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Nov 2022 06:21:47 -0800 (PST)
Date: Tue, 8 Nov 2022 16:21:44 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Petr Machata <petrm@nvidia.com>
Message-ID: <20221108142144.g7wa22k4udaqofmw@skbuf>
References: <cover.1667902754.git.petrm@nvidia.com>
 <cover.1667902754.git.petrm@nvidia.com>
 <68167a3ebca74bb7cd45da0ff7c1268a70c33a96.1667902754.git.petrm@nvidia.com>
 <68167a3ebca74bb7cd45da0ff7c1268a70c33a96.1667902754.git.petrm@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <68167a3ebca74bb7cd45da0ff7c1268a70c33a96.1667902754.git.petrm@nvidia.com>
 <68167a3ebca74bb7cd45da0ff7c1268a70c33a96.1667902754.git.petrm@nvidia.com>
Cc: Ivan Vecera <ivecera@redhat.com>, bridge@lists.linux-foundation.org,
 netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 Jiri Pirko <jiri@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 "Hans J . Schultz" <netdev@kapio-technology.com>,
 Eric Dumazet <edumazet@google.com>, mlxsw@nvidia.com,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 02/15] bridge: switchdev: Allow device
 drivers to install locked FDB entries
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

On Tue, Nov 08, 2022 at 11:47:08AM +0100, Petr Machata wrote:
> From: Hans J. Schultz <netdev@kapio-technology.com>
> 
> When the bridge is offloaded to hardware, FDB entries are learned and
> aged-out by the hardware. Some device drivers synchronize the hardware
> and software FDBs by generating switchdev events towards the bridge.
> 
> When a port is locked, the hardware must not learn autonomously, as
> otherwise any host will blindly gain authorization. Instead, the
> hardware should generate events regarding hosts that are trying to gain
> authorization and their MAC addresses should be notified by the device
> driver as locked FDB entries towards the bridge driver.
> 
> Allow device drivers to notify the bridge driver about such entries by
> extending the 'switchdev_notifier_fdb_info' structure with the 'locked'
> bit. The bit can only be set by device drivers and not by the bridge
> driver.
> 
> Prevent a locked entry from being installed if MAB is not enabled on the
> bridge port.
> 
> If an entry already exists in the bridge driver, reject the locked entry
> if the current entry does not have the "locked" flag set or if it points
> to a different port. The same semantics are implemented in the software
> data path.
> 
> Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> Reviewed-by: Petr Machata <petrm@nvidia.com>
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> ---
> 
> Notes:
>     v1:
>     * Adjust commit message.
>     * Add a check in br_switchdev_fdb_notify().
>     * Use 'false' instead of '0' in br_switchdev_fdb_populate().

Thanks for making the changes.

Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>

(imagine this was my NXP email address, I'm not subscribed to netdev @work)
