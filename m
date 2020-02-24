Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE32216ACA6
	for <lists.bridge@lfdr.de>; Mon, 24 Feb 2020 18:06:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3FB3D860F0;
	Mon, 24 Feb 2020 17:06:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6buc3cXy28ns; Mon, 24 Feb 2020 17:06:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C8B4685E7C;
	Mon, 24 Feb 2020 17:06:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BB0F6C0177;
	Mon, 24 Feb 2020 17:06:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3AB5FC0177
 for <bridge@lists.linux-foundation.org>; Mon, 24 Feb 2020 17:06:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 297828584C
 for <bridge@lists.linux-foundation.org>; Mon, 24 Feb 2020 17:06:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e+-8W0ttCOv6 for <bridge@lists.linux-foundation.org>;
 Mon, 24 Feb 2020 17:06:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E852181F22
 for <bridge@lists.linux-foundation.org>; Mon, 24 Feb 2020 17:06:45 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id l18so7354151lfc.1
 for <bridge@lists.linux-foundation.org>; Mon, 24 Feb 2020 09:06:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=date:in-reply-to:references:mime-version:content-transfer-encoding
 :subject:to:cc:from:message-id;
 bh=qPiprPPWOXKnPPDBG4O0xCF4AFbKQDRfeTyRm4fHf48=;
 b=T6711nbGJFtACfO8Li5uHflBgNtZ9UemEEG66EgJSxj7oeeXGJKDF14QhR3U/bVPGK
 CcDbQJcXp3wgFeKxl79HhwVvEuWAH3bkMNzuAeNm3pIZGPugPDkJxXNHuO+hFIPqO+V4
 nPzzkesTKw9jiIOQwznxCTCIKeo+0vy89ubD4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:references:mime-version
 :content-transfer-encoding:subject:to:cc:from:message-id;
 bh=qPiprPPWOXKnPPDBG4O0xCF4AFbKQDRfeTyRm4fHf48=;
 b=Ot71eQLy+iq8KIqKMWXHEsXmC2W1MnfguAsiPTf/rd4QL1/R58Xd3MgKLSCRa42JZF
 joJKsgeNE4lOuP4Rw6cknG1ZiCSsaKnDXhiADFNDjC8d4Jacx8egbcHezRO+otH9RsNU
 +0ihLZWx2t40gayP+T3zoCt3wbeHzHW8XUmEXFY1tlTi4ir11gAv7BV6/qXSapk3jW6m
 xg82rf/fd6AWIx2zWqR7F4zXihYAIJlLN5S3xZiuRBBk3ggE4lwOfoZmaXrZoB+P/uhM
 yCB2XHPoQL7Es52yl5V0iqJqOsid9DL3yU90N2IP3vkoyApFjeo4jvw643/3UH1LmjPr
 jhbg==
X-Gm-Message-State: APjAAAXFj8jcv/yayDSPqPe+kwyZPPDJnQKE8fEZcXa0JKVM7Z8EPi+6
 lc8bzWMioAK6JlInxFxyUk2w3Q==
X-Google-Smtp-Source: APXvYqw1TQnGxwF1ueBPFszBUMAPIyzp0xxQ7Ya/FLVeZcFyR7tZFURr2pGkefc+O83L7yZ+Gi5szg==
X-Received: by 2002:a19:c70c:: with SMTP id x12mr1338812lff.210.1582564003967; 
 Mon, 24 Feb 2020 09:06:43 -0800 (PST)
Received: from localhost ([149.62.205.95])
 by smtp.gmail.com with ESMTPSA id s22sm6701675ljm.41.2020.02.24.09.06.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Feb 2020 09:06:42 -0800 (PST)
Date: Mon, 24 Feb 2020 19:06:39 +0200
In-Reply-To: <20200224085427.0358ed8c@hermes.lan>
References: <83cadec7-d659-cf2a-c0c0-a85d2f6503bc@cumulusnetworks.com>
 <20200224164622.1472051-1-nikolay@cumulusnetworks.com>
 <20200224085427.0358ed8c@hermes.lan>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
To: Stephen Hemminger <stephen@networkplumber.org>
From: nikolay@cumulusnetworks.com
Message-ID: <D49B5587-5365-4B09-9728-0BE23056A974@cumulusnetworks.com>
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net v2] net: bridge: fix stale eth hdr pointer
	in br_dev_xmit
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

On 24 February 2020 18:54:27 EET, Stephen Hemminger <stephen@networkplumber=
=2Eorg> wrote:
>On Mon, 24 Feb 2020 18:46:22 +0200
>Nikolay Aleksandrov <nikolay@cumulusnetworks=2Ecom> wrote:
>
>> -	eth =3D eth_hdr(skb);
>>  	skb_pull(skb, ETH_HLEN)
>
>you could just swap these two lines=2E

Can't, still caching the wrong mac_header offset=2E br_allowed_ingress() c=
an change the head pointer and also the offsets inside=2E=20


