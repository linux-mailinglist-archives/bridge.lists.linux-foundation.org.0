Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B998F622903
	for <lists.bridge@lfdr.de>; Wed,  9 Nov 2022 11:51:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C8B45606C6;
	Wed,  9 Nov 2022 10:51:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8B45606C6
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.a=rsa-sha256 header.s=protonmail3 header.b=wahOJGy5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aCchMCoEcB4V; Wed,  9 Nov 2022 10:51:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 1D2CA60AFE;
	Wed,  9 Nov 2022 10:51:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D2CA60AFE
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AEBCFC0077;
	Wed,  9 Nov 2022 10:51:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 78845C002D
 for <bridge@lists.linux-foundation.org>; Wed,  9 Nov 2022 10:51:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 45EF340396
 for <bridge@lists.linux-foundation.org>; Wed,  9 Nov 2022 10:51:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 45EF340396
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com
 header.a=rsa-sha256 header.s=protonmail3 header.b=wahOJGy5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fpn2QdP1rZSS for <bridge@lists.linux-foundation.org>;
 Wed,  9 Nov 2022 10:51:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E0F2401B1
Received: from mail-4318.protonmail.ch (mail-4318.protonmail.ch [185.70.43.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4E0F2401B1
 for <bridge@lists.linux-foundation.org>; Wed,  9 Nov 2022 10:51:33 +0000 (UTC)
Date: Wed, 09 Nov 2022 10:51:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=protonmail3; t=1667991091; x=1668250291;
 bh=MMMFvG98C32beywaTGUzTV0OQSC7D0EIWs74uWeeHVQ=;
 h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
 b=wahOJGy5jOM8zc4/Z/oTWLKyOxmCIEuo2jrC4lCoMZjcFNfvj7guxyY245b6r6BJ+
 27TCtOBbqXnnQMmefiS6mNf89/sl1OqwA0GIbTCv6i7M5XEQEI/M328XGlIpzwk9lQ
 IQmusu3izOlpLhz/i5Zb5M2DILY6+LRrcjez3bfa2FSbv7Rt2YivVAMBqdlcolCt9q
 WA+X+uQZXXj4cQTb5WQLHCeqMq+4TDRNWtz9vNmSb3SI/jv3H7HNayMTQWc3vjgG/I
 cIxf3nj8hkgjaJBJhQcbgfXghbWHc3WP2c+KYlhkqcaGRiFhw0/PQS49aXV8nifGWU
 CnJ9I5g7xbIGw==
To: "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>
Message-ID: <nWfVbvdboX65r0xMXv0iZCj8TH7c8vStvilCD3Ilx5Y42yoHh34rJHJBMy8y4HhqXWXM0n3tLhLD870c863UjI20HBSxM8qwJlLMxuPjg0g=@protonmail.com>
Feedback-ID: 33196921:user:proton
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="b1_3fOWWc3ivzCQhEpyREMDmhEEOORZ89rEYi4mnMBcVw"
Subject: [Bridge] How to connect more than 200 interfaces to a bridge
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
From: Ali Shirvani via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Ali Shirvani <alishirv@protonmail.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

This is a multi-part message in MIME format.

--b1_3fOWWc3ivzCQhEpyREMDmhEEOORZ89rEYi4mnMBcVw
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

SGVsbG8gZXZlcnlvbmUsCgpJdCBzZWVtcyB3ZSByZWFjaCB0aGUgTGludXggYnJpZGdlIGxpbWl0
YXRpb24gb24gdGhlIG51bWJlciBvZiBpbnRlcmZhY2VzIGluIGEgc2luZ2xlIGJyaWRnZS4gQ3Vy
cmVudGx5LCB3ZSBoYXZlIDIxMCB0YXAgaW50ZXJmYWNlIGluIGEgYnJpZGdlLCBhbmQgd2Ugc3Vm
ZmVyIGZyb20gbW9yZSB0aGFuIDUwJSBwYWNrZXQgbG9zcyB3aGVuIHdlIHBpbmcgdGhlIElQIGFk
ZHJlc3Mgb2YgdGhlIHZpcnR1YWwgbWFjaGluZSB0aGF0IHVzZXMgb25lIG9mIHRoZSB0YXAgaW50
ZXJmYWNlcyBpbiB0aGUgYnJpZGdlLgpEbyB5b3Uga25vdyBob3cgd2UgY2FuIGNvbm5lY3QgbW9y
ZSB0aGFuIDIwMCBWTXMgdmlydHVhbCBpbnRlcmZhY2VzIHRvIGEgYnJpZGdlPwoKQmVzdCByZWdh
cmRzLApBbGkKClNlbnQgd2l0aCBbUHJvdG9uIE1haWxdKGh0dHBzOi8vcHJvdG9uLm1lLykgc2Vj
dXJlIGVtYWlsLg==

--b1_3fOWWc3ivzCQhEpyREMDmhEEOORZ89rEYi4mnMBcVw
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IEFyaWFsOyBmb250LXNpemU6IDE0cHg7Ij48c3BhbiBz
dHlsZT0iZm9udC1mYW1pbHk6IEFyaWFsOyBmb250LXNpemU6IDE0cHg7IGxpbmUtaGVpZ2h0OiBu
b3JtYWw7Ij5IZWxsbyBldmVyeW9uZSw8L3NwYW4+PC9kaXY+PGRpdiBzdHlsZT0iZm9udC1mYW1p
bHk6IEFyaWFsOyBmb250LXNpemU6IDE0cHg7Ij48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6IEFy
aWFsOyBmb250LXNpemU6IDE0cHg7IGxpbmUtaGVpZ2h0OiBub3JtYWw7Ij48YnI+PC9zcGFuPjwv
ZGl2PjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBBcmlhbDsgZm9udC1zaXplOiAxNHB4OyI+PC9k
aXY+PGRpdj48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6IEFyaWFsOyBmb250LXNpemU6IDE0cHg7
IGxpbmUtaGVpZ2h0OiBub3JtYWw7Ij5JdCBzZWVtcyB3ZSByZWFjaCB0aGUgTGludXggYnJpZGdl
IGxpbWl0YXRpb24gb24gdGhlIG51bWJlciBvZiBpbnRlcmZhY2VzIGluIGEgc2luZ2xlIGJyaWRn
ZS4gQ3VycmVudGx5LCB3ZSBoYXZlIDIxMCB0YXAgaW50ZXJmYWNlIGluIGEgYnJpZGdlLCBhbmQg
d2Ugc3VmZmVyIGZyb20gbW9yZSB0aGFuIDUwJSBwYWNrZXQgbG9zcyB3aGVuIHdlIHBpbmcgdGhl
IElQIGFkZHJlc3Mgb2YgdGhlIHZpcnR1YWwgbWFjaGluZSB0aGF0IHVzZXMgb25lIG9mIHRoZSB0
YXAgaW50ZXJmYWNlcyBpbiB0aGUgYnJpZGdlLjwvc3Bhbj48L2Rpdj48ZGl2Pjxicj48L2Rpdj48
c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6IEFyaWFsOyBmb250LXNpemU6IDE0cHg7IGxpbmUtaGVp
Z2h0OiBub3JtYWw7Ij5EbyB5b3Uga25vdyBob3cgd2UgY2FuIGNvbm5lY3QgbW9yZSB0aGFuIDIw
MCBWTXMgdmlydHVhbCBpbnRlcmZhY2VzIHRvIGEgYnJpZGdlPzwvc3Bhbj48ZGl2IHN0eWxlPSJm
b250LWZhbWlseTogQXJpYWw7IGZvbnQtc2l6ZTogMTRweDsiPjwvZGl2PjxkaXYgc3R5bGU9ImZv
bnQtZmFtaWx5OiBBcmlhbDsgZm9udC1zaXplOiAxNHB4OyI+PGJyPjwvZGl2PjxkaXYgc3R5bGU9
ImZvbnQtZmFtaWx5OiBBcmlhbDsgZm9udC1zaXplOiAxNHB4OyI+PHNwYW4gc3R5bGU9ImZvbnQt
ZmFtaWx5OiBBcmlhbDsgZm9udC1zaXplOiAxNHB4OyBsaW5lLWhlaWdodDogbm9ybWFsOyI+QmVz
dCByZWdhcmRzLDwvc3Bhbj48L2Rpdj48ZGl2IHN0eWxlPSJmb250LWZhbWlseTogQXJpYWw7IGZv
bnQtc2l6ZTogMTRweDsiPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTogQXJpYWw7IGZvbnQtc2l6
ZTogMTRweDsgbGluZS1oZWlnaHQ6IG5vcm1hbDsiPkFsaTwvc3Bhbj48YnI+PC9kaXY+PGRpdiBz
dHlsZT0iZm9udC1mYW1pbHk6IEFyaWFsOyBmb250LXNpemU6IDE0cHg7Ij48YnI+PC9kaXY+DQo8
ZGl2IGNsYXNzPSJwcm90b25tYWlsX3NpZ25hdHVyZV9ibG9jayIgc3R5bGU9ImZvbnQtZmFtaWx5
OiBBcmlhbDsgZm9udC1zaXplOiAxNHB4OyI+DQogICAgPGRpdiBjbGFzcz0icHJvdG9ubWFpbF9z
aWduYXR1cmVfYmxvY2stdXNlciBwcm90b25tYWlsX3NpZ25hdHVyZV9ibG9jay1lbXB0eSI+DQog
ICAgICAgIA0KICAgICAgICAgICAgPC9kaXY+DQogICAgDQogICAgICAgICAgICA8ZGl2IGNsYXNz
PSJwcm90b25tYWlsX3NpZ25hdHVyZV9ibG9jay1wcm90b24iPg0KICAgICAgICBTZW50IHdpdGgg
PGEgdGFyZ2V0PSJfYmxhbmsiIGhyZWY9Imh0dHBzOi8vcHJvdG9uLm1lLyIgcmVsPSJub29wZW5l
ciBub3JlZmVycmVyIj5Qcm90b24gTWFpbDwvYT4gc2VjdXJlIGVtYWlsLg0KICAgIDwvZGl2Pg0K
PC9kaXY+DQo=


--b1_3fOWWc3ivzCQhEpyREMDmhEEOORZ89rEYi4mnMBcVw--

